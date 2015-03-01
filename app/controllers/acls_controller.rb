class AclsController < ApplicationController

  # force login
  before_filter :redirect_to_https

  include DelegatesHelper

  def redirect_to_https
      redirect_to :protocol => "https://" unless (request.ssl? || request.local?)
  end
  
  def check
    if params['format'] == 'json'
      delegate_check( params['protocol'], params['source'], params['source_port'], params['destination'], params['destination_port'], params['policy'] ) do |type,data|
        # logger.warn("%s %s" % [type,data])
        if type == 'data'
          @checks = data 
        elsif type == 'error'
          flash[:error] = data
          render json: flash
        end        
      end
    end
  end
  
  
  def list
    @policies = []
    delegate_list() do |t,p|
      @policies << p if t == 'data'
    end
  end
  

  def delegate_check( proto, src, src_port, dst, dst_port, policy )

    uuid = SecureRandom.uuid
    context = {
        'source' => src,
        'source_port' => src_port,
        'destination' => dst,
        'destination_port' => dst_port,
        'protocol' => proto,
        'policy' => policy,
    }
  
    # logger.warn("%s" % [context,])
    msg = prepare_request( uuid, context, { 'capirca.check' => true } )
  
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
      logger.warn "#{payload}"
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
    
  def delegate_list( )

    uuid = SecureRandom.uuid
    msg = prepare_request( uuid, {}, { 'capirca.list' => true } )
  
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
      logger.warn "#{payload}"
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





  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def acl_params
      params[:acl]
    end

end
