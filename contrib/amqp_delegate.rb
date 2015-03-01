require 'bunny'
require 'securerandom'
require 'json'
require 'logger'

logger = Logger.new(STDOUT)

def connect( )
  conn = Bunny.new( :host => "net-amqp01.slac.stanford.edu", :vhost => "/delegate-test", :user => "delegate", :pass => "delegate" )
  conn.start
  conn
end

def delegate_port( device, port, data={} )
  uuid = SecureRandom.uuid
  conn = connect()
  ch = conn.create_channel
  
  # request queue
  p  = ch.topic('task.request', :auto_delete => false, :durable => true )
  msg = {
    '_meta' => {
      'task_id' => uuid,
      'user' => 'ytl@SLAC.STANFORD.EDU',
    },
    'context' => {
      'device' => device,
      'interface' => port
    },
    'data' => data
  }
  logger.debug( "MSG: %s" % msg )
  p.publish(msg.to_json)
  
  # response queue
  x = ch.direct('client', :durable=>true, :auto_delete=>false )
  q = ch.queue( uuid, :exclusive=>true ).bind( x, :routing_key=>uuid )

  puts "QUEUE: %s" % q
  q.subscribe( :block=>true, :ack=>true ) do |info,props,payload|
    begin
      d = JSON.parse(payload)
      yield d['level'], d['data'] if d['type'] == 'log'
    rescue Exception => e
      Thread.exit if "#{payload}" == '"===END==="'
      # puts "ERROR #{e} %s" % (payload.class)
    end
  end

end

delegate_port( 'swh-b050f3.slac.stanford.edu', 'Gi1/44', { 'port.state' => true } ) do |type,msg|
  puts "#{type}\t#{msg}"
end