class DevicesController < ApplicationController
  # before_action :set_device, only: [:show, :edit, :update, :destroy]

  include PortsHelper

  def api_devices
    p = device_params
    # logger.debug "DEVICE: " + p.to_s
    if p['query'].nil?
      @devices = Device.all
    else
      @devices = Device.where( 'LOWER(device) ~ LOWER(?)', p['query'] ).order('device').select( 'DISTINCT device')
    end
    @devices
  end

  def index
    # spit out results
    if not params.include?('format') or params['format'] == 'html'
      # nothing
    else
      @devices = list
    end
  end

  def list
    # query for a list of devices
    q = []
    list_params.each do |k,v|
      if [ 'groups', 'categories' ].include? k
        q << "'%s' = ANY (devices.%s::text[])" % [v.downcase,k]
      elsif v.kind_of?(Array)
        a = []
        v.each do |w|
          a << "devices.%s='%s'" % [k,w.downcase]
        end
        q << '( %s )' % [a.join( ' OR ' )]
      else
        q << "devices.%s~'%s'" % [k,v.downcase] unless k == 'format'
      end
    end
    @devices = Device.where( q.join(' AND ') ).order('device')
  end


  def api_device_neighbours
    p = neighbour_params
    if not p['neighbour'].nil?
          @neighbours = L1_Neighbour.where( "LOWER(device) ~ LOWER(?) AND LOWER(peer_device) ~ LOWER(?)", p['device'], p['neighbour'] )          
    elsif p['physical_port'].nil?
      @neighbours = L1_Neighbour.where( "LOWER(device) ~ LOWER(?)", p['device'] )
    else
      @neighbours = L1_Neighbour.where( 'LOWER(device) ~ LOWER(?) AND (%s)' % [p['physical_port'].join(" OR ")], p['device'] )
    end
    # logger.error("N: %s" % (@neighbours.inspect))
    # strip off fqdn if requested
    logger.error("FQDN: %s" % (p['fqdn']))
    unless p['fqdn'] == true or p['fqdn'] == 'true'
      @neighbours.each do |n|
        [ 'device', 'peer_device' ].each do |d|
          n[d] = n[d].split('.').first
        end
      end 
    end
    @neighbours
  end
  
  def api_device_ipsla
    p = ipsla_params
    @ipslas = Ip_Sla.where( "LOWER(device) ~ LOWER(?) AND sla=?", p['device'], p['sla'] )
  end

  def api_device_vlans
    p = device_params
    @vlans = Vlan.where( "LOWER(device) = LOWER(?) AND vlan NOT IN ( 3,1002,1003,1004,1005 )", p['query'] ).order('vlan')
    # always vlan 1...?
  end




  private
  
    def ipsla_params
      params.permit(:device,:sla)
    end
    
    def neighbour_params
      params.permit(:device,:neighbour,:physical_port,:fqdn,:format)
      [ 'device' ].each do |i|
        if params[i].nil?
          raise 'required parameter "%s" not supplied' % [i]
        end
      end
      
      [ 'port', 'controller', 'action', 'format' ].each do |i|
        params.delete(i)
      end
      if params['fqdn'].nil?
        params['fqdn'] = false
      end
      params['physical_port'] = port_search_array( params['physical_port'] )
      params
    end
    
    def device_params
      params.permit(:query,:format)
    end
    
    def list_params
      params.permit(:device,:format,:groups,:categories,{:device_type => []})
    end
end
