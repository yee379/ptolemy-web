class CfmsController < ApplicationController

  # force login
  before_filter :redirect_to_https

  include DelegatesHelper

  def redirect_to_https
      redirect_to :protocol => "https://" unless (request.ssl? || request.local?)
  end
  
  def search
    if not params.include?('format') or params['format'] == 'html'
      @ip = params['ip']
    else
      delegate_search( params['ip'] ) do |l,d|
        if l == 'data'
          out = JSON.dump( d )
          send_data out, :type => 'application/json', :disposition => 'inline'
        elsif l == 'error'
          err = JSON.dump( d )
          # out = { 'error' => err }
          send_data err, :type => 'application/json', :disposition => 'inline', :status => 401
        end

      end
    end
  end
  
  def delegate_search( ip )

    uuid = SecureRandom.uuid
    msg = prepare_request( uuid, {}, { 'hardblockqueue.search' => true, 'ip' => ip, 'regex' => true, 'operator' => '~' } )
  
    # conn = connect( vhost: '/delegated-test')
    conn = connect( )
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





  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cfm_params
      params[:ip]
    end


end
