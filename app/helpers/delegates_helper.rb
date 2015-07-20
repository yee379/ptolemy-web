require 'bunny'
require 'json'
require 'socket'

module DelegatesHelper
  
  def connect( host: "net-amqp01.slac.stanford.edu", vhost: "/delegated", user: "delegate", pass: "delegate" )
    conn = Bunny.new( :host => host, :vhost => vhost, :user => user, :pass => pass )
    conn.start
    conn
  end


  def prepare_request( uuid, context, data, sync=nil )
    # build username from server?
    _, *domain = env['SERVER_NAME'].split(/\./)
    domain = domain.join('.').upcase
    if domain == ''
      # grab the fqdn in case
      _, *domain = Socket.gethostbyname(Socket.gethostname).first.split(/\./)
      domain = domain.join('.').upcase
    end

    data['sync'] = sync unless sync.nil?
    msg = {
      '_meta' => {
        'task_id' => uuid,
        'user' => @current_user.user + '@' + domain
      },
      'context' => context,
      'data' => data
    }
    
    # logger.info 'delegated user: %s' % [ msg['_meta']['user'] ]
    
    # block until finished 
    return msg
  end
  

  def send_request( uuid, msg )
    conn = connect()
    ch = conn.create_channel

    # request queue
    p  = ch.topic('task.request', :auto_delete => false, :durable => true )
  
    # response queue
    x = ch.direct('client', :durable=>true, :auto_delete=>false )
    q = ch.queue( uuid, :exclusive=>true ).bind( x, :routing_key=>uuid )
  
    # prime the response queue before publishing
    _, _, _ = q.pop
    # logger.debug( "SENDING REQUEST: %s" % msg )
    p.publish(msg.to_json)

    q.subscribe( :block=>true, :ack=>true ) do |info,props,payload|
      # logger.warn "#{payload}"
      begin
        d = JSON.parse(payload)
        yield d['level'], d['data'] if d['type'] == 'log'
      rescue => e
        unless "#{payload}" == '"===END==="'
          raise e
        end
      ensure
        Thread.exit 
      end
    end
  
  end
  
  
end
