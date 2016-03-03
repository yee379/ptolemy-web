require 'net/http'

class StatsController < ApplicationController
  
  include StatsHelper
  
  # caches_action :get
  
  def get
    p = stats_params
    metrics = lookup p

    found = false
    # try the last value cache first if defined
    unless p['cache'].nil?
      c = redis_fetch( metrics, p )
      if c.length > 0
        # logger.debug '  GOT C (%s): %s' % [p['cache'],c]
        found = true
        send_data c.join("\n"), :type => 'text/plain', :disposition => 'inline'
      end
    end

    # fetch from tsdb
    unless found
      # keep last value if there's gaps
      if p['keeplast'] then last = !!p['keeplast'] else last = false end
      if last
        metrics = metrics.collect{ |x| "keepLastValue(%s)" % [x] }
      end

      r = graphite_fetch( metrics, p )
      send_data r.body, :type => r.content_type, :disposition => 'inline'
    end
  end
  
  def proxy
    params['format'] = 'raw'
    server = STATS_CONFIG['defaults']['server']
    req = Net::HTTP::Get.new( request.fullpath )
    # logger.debug 'graphite: http://' + server + request.fullpath
    s = Net::HTTP.new( server )
    d = s.request( req )
    send_data d.body, :type => d.content_type, :disposition => 'inline'
  end


  def mean(array)
    array.inject{ |sum, x| sum += x } / array.size.to_f
  end

  def summarise( csv )
    # given the data in ordered (in time) hash format?
    # apply the function (sum, mean, min, max) on the dataset 
    # return an array of the data
    data = {}
    csv.split( /\r?\n/ ).each do |l|
      k,t,v = l.split(',')
      k = k.split( /\./ )
      f = k.pop
      k = k.join('.')
      # puts "- %s (%s) \t %s \t %s" % [k,f,t,v]
      
      # tally up values and build hash
      data[k] = {} if data[k].nil?
      data[k][f] = { 'total' => 0, 'count' => 0, 'data' => [] } if data[k][f].nil?
      if v
        data[k][f]['total'] = data[k][f]['total'] + v.to_f
        data[k][f]['count'] = data[k][f]['count'].to_i + 1
        data[k][f]['data'] << v.to_f
      end
      
    end

    rows = []

    # get averages
    data.each_key do |k|
      fields = {}
      data[k].each_key do |f|
        fields[f] = true
        m = mean( data[k][f]['data'] )
        v = data[k][f]['data'].inject(0) { |v, x| v += (x - m) ** 2 }
        l = data[k][f]['data'].length
        s = Math.sqrt( v/(l-1) )
        e = s / Math.sqrt( l )
        data[k][f]['mean'] = m
        data[k][f]['error'] = e
      end
      # append
      this = { 'prefix' => k }
      fields.keys.each do |m|
        this[m] = "%.3f" % [ data[k][m]['mean'] ]
        this[m+"_error"] = "%.3f" % [ data[k][m]['error'] ]
      end
      rows << this
    end
    
    rows
  end


  private
    def stats_params
      params.permit( :from, :until, :format, :metric, :device, :physical_port, :prefix, :len, :source, :target, :summarize, :keeplast, :name, :cache )
    end

end
