class PortsController < ApplicationController

  include PortsHelper
  include DelegatesHelper

  def api_index
    p = device_params
    p.delete('format')
    @vlan_names = {}
    Vlan.where( p ).each do |v|
      @vlan_names[v.vlan] = v.name
    end
    # logger.error("NAMES %s " % @vlan_names.to_yaml)
    @ports = Port.where( p )
  end

  def api_port_neighbours
    p = neighbour_params
    if ! p['mac_address'].nil?
      @neighbours = L2_Neighbour.find_all_by_mac_address( p['mac_address'] )
    elsif ! p['device'].nil? and p['physical_port'].nil?
      @neighbours = L2_Neighbour.find_all_by_device_and_physical_port( p['device'], p['physical_port'] )
    elsif ! p['device'].nil?
      @neighbours = L2_Neighbour.find_all_by_device( p['device'] )
    end
    @neighbours
  end

  def api_port_alias
    p = port_params
    @ports = Port.where( 'device ~ ? AND (%s)' % [ p['physical_port'].join(" OR ") ], p['device'] )
    @vlan_names = {}
    render :template => 'ports/api_index'
  end
  
  def api_port_location
    p = location_params
    devices = Location.where( 'location ~ ?', p['building'] )
    # @ports = Port.where( 'device IN (?) and alias ~ ?', devices, p['room'] )
    @ports = Port.where( 'device in (?)', devices.map{ |i| i['device'] } )
  end


  def api_port_type
    # lookup entity group and find the group, then search for all ports from that device that match the type
    p = port_type_params
    devices = Device.where( '? = ANY (groups)', p['group'] ).map{ |d| d['device'] }
    @ports = Port.where( "device IN (?) AND data->'physical'='True' AND data->'function'='access'", devices )
  end
  
  # GET /ports
  # GET /ports.json
  def index
  end



  def update
    delegate_port( params['device'], params['physical_port'], params ) do |type,data|
      # logger.info("#{type}\t#{data}")
      if type == 'data'
        @ports = data 
      elsif type == 'error'
        @error = data
      end
    end
    
    respond_to do |format|
      if @ports
        format.json { render json: renormalise_port_data( @ports ) }
      else
        format.json { render json: @error, status: :unprocessable_entity }
      end
    end
  end



  def normalise_port_request( data )
    # convert a request from json to something the backend can understand
    # logger.error("INCOMING REQUEST: %s" % data)
    
    # remap state
    port_settings = {}
    [ 'state', 'vlan', 'alias', 'subnet', 'voice_vlan' ].each do |k|
      add_this = true

      unless params[k].nil?

        v = params[k].rstrip.lstrip

        # boolean
        case k
        when 'state'
          case v
          when 'enabled'
            v = true
          when 'disabled'
            v = false
          end
        when 'subnet'
          case v
          when 'VISITOR'
            port_settings['port.type'] = 'private-vlan host'
            port_settings['port.vlan'] = [ 301,303 ]
            port_settings['port.speed'] = 'auto 10 100'
            add_this = false
          end
        when 'voice_vlan'
          case v
          when 'true'
            v = true
          when 'false'
            v = false
          end
        end
      
      
        port_settings["port.%s"%k] = v if add_this

      end
    end
    
    # logger.error("NORMALISED REQUEST: %s" % port_settings)
    port_settings
  end

  def renormalise_port_data( data )
    # convert port info from backend that frontend can understand
    # remap visitor stuff
    begin
      # logger.error("RENORMALISE: %s" % data[0]['vlan_name'].class )
      # hide visitor private vlan stuff
      if data[0]['vlan_name'][0] == "VISITOR-PV-PRIMARY"
        data[0]['vlan_name'] = 'VISITOR'
        data[0]['vlan'] = '*'
      end
    rescue => err
      logger.error("ERR #{err}")
    end
    data
  end


  # def delegate_port( device, port, data={} )
  #   uuid = SecureRandom.uuid
  #   conn = connect()
  #   ch = conn.create_channel
  # 
  #   # request queue
  #   p  = ch.topic('task.request', :auto_delete => false, :durable => true )
  # 
  #   # build username from server?
  #   _, *domain = env['SERVER_NAME'].split(/\./)
  #   domain = domain.join('.').upcase
  #   
  #   msg = {
  #     '_meta' => {
  #       'task_id' => uuid,
  #       'user' => @current_user.user + '@' + domain,
  #     },
  #     'context' => {
  #       'device' => device,
  #       'interface' => port.gsub('.','/')
  #     },
  #     'data' => normalise_port_request( data )
  #   }
  #   if data.has_key?('no_commit')
  #     msg['context']['no_commit'] = data['no_commit']
  #   end
  #   # block until finished
  #   data['sync'] = true
  #   logger.debug( "TASK REQUEST: %s" % msg )
  # 
  #   # response queue
  #   x = ch.direct('client', :durable=>true, :auto_delete=>false )
  #   q = ch.queue( uuid, :exclusive=>true ).bind( x, :routing_key=>uuid )
  # 
  #   # prime the response queue before publishing
  #   _, _, _ = q.pop
  #   p.publish(msg.to_json)
  # 
  #   q.subscribe( :block=>true, :ack=>true ) do |info,props,payload|
  #     logger.warn "#{payload}"
  #     begin
  #       d = JSON.parse(payload)
  #       yield d['level'], d['data'] if d['type'] == 'log'
  #     rescue => e
  #       if "#{payload}" == '"===END==="'
  #         Thread.exit 
  #       else
  #         raise e
  #       end
  #     end
  #   end
  # 
  # end
  

  def delegate_port( device, port, data={} )

    uuid = SecureRandom.uuid
    context = {
        'device' => device,
        'interface' => port.gsub('.','/')
    }
    data = normalise_port_request( data )
    if data.has_key?('no_commit')
      context['no_commit'] = data['no_commit']
    end
    
    msg = prepare_request( uuid, context, data )
    # return send_request( uuid, msg )
    
    conn = connect()
    ch = conn.create_channel

    # request queue
    p  = ch.topic('task.request', :auto_delete => false, :durable => true )
  
    # response queue
    x = ch.direct('client', :durable=>true, :auto_delete=>false )
    q = ch.queue( uuid, :exclusive=>true ).bind( x, :routing_key=>uuid )
  
    # prime the response queue before publishing
    _, _, _ = q.pop
    p.publish(msg.to_json)

    q.subscribe( :block=>true, :ack=>true ) do |info,props,payload|
      # logger.warn "#{payload}"
      begin
        d = JSON.parse(payload)
        yield d['level'], d['data'] if d['type'] == 'log'
      rescue => e
        if "#{payload}" == '"===END==="'
          Thread.exit
        else
          raise e
        end
      ensure
        puts 'END'
      end
    end
        
  end



  def api_port_utilisations
    p = port_utilisation_params
    if p['period'].nil?
      p['period'] = 1
    end
      
    if not p['device'].nil?
      s = 'pt:cap:%s:%s' % [ p['device'], p['period'] ]
    elsif not p['uplinks'].nil?
      s = 'pt:cap:uplinks:%s' % [ p['period'] ]
    end
    
    if p['limit'].nil?
      p['limit'] = -1
    else
      p['limit'] = 2 * p['limit'].to_i
    end
    
    @ports = []
    $redis.zrevrange( s, 0, p['limit'], :with_scores => true ).each do |k|
      a = k[0].split(':')
      @ports << { :device => a[2], :physical_port => a[3], :direction => a[4], :load => k[1] }
    end
  end


  private
  
    def device_params
      params.permit( :device, :format )
    end
  
    def port_type_params
      params.permit( :group )
    end
  
    def port_utilisation_params
      params.permit( :device, :uplinks, :period, :limit, :format )
    end
      
  
    def port_params
      params.permit(:device,:physical_port,:format)
      [ 'format', 'controller', 'action' ].each do |i|
        params.delete(i)
      end
      params['physical_port'] = port_search_array( params['physical_port'] )
      params
    end
  
    def neighbour_params
      params.permit(:device,:physical_port,:mac_address,:fqdn,:format)
    end
      
    def location_params
      params.permit(:device,:building,:room)
    end

    def delegate_params
      params[:device,:physical_port,:state,:alias,:vlan,:speed_duplex,:autoneg,:voice_vlan]
    end

end
