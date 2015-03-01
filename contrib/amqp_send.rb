require 'bunny'
require 'json'

logger = Logger.new(STDOUT)

conn = Bunny.new( :host => "net-amqp01.slac.stanford.edu", :vhost => "/delegate-test", :user => "delegate", :pass => "delegate" )
conn.start
ch = conn.create_channel

uuid = 'testing'

# request queue
p  = ch.direct('client', :durable=>true, :auto_delete=>false )
msg = {
  '_meta' => {
    'task_id' => uuid,
    'user' => 'ytl@SLAC.STANFORD.EDU',
  },
  'context' => {
    'device' => 'swh-b050f3.slac.stanford.edu',
    'interface' => 'Gi1/44'
  },
  'data' => { 'port.state' => true }
}
logger.warn("MSG: %s" % msg)
p.publish(msg.to_json) #, :routing_key=>uuid)
