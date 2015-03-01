require 'bunny'
require 'json'

logger = Logger.new(STDOUT)

conn = Bunny.new( :host => "net-amqp01.slac.stanford.edu", :vhost => "/delegate-test", :user => "delegate", :pass => "delegate" )
conn.start
ch = conn.create_channel

uuid = 'testing'

# response queue
x = ch.direct('client', :durable=>true, :auto_delete=>false )
q  = ch.queue( uuid ).bind( x, :routing_key=>uuid )

logger.error("QUEUE: %s" % q)
q.subscribe( :block=>true, :ack=>true ) do |info,props,payload|
  logger.error("STUFF #{payload}")
end
