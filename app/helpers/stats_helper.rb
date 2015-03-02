module StatsHelper
  
  def lookup( params, keepLastValue=false )
    # use the yaml file and determine if we have a shortcut for this
    metrics = []
    m = params['metric']
    # logger.debug 'params: %s' % [params]
    if STATS_CONFIG['statistics'].has_key?( m )
      STATS_CONFIG['statistics'][m].each do |i|
        # logger.debug 'METRIC: %s' % [i]
        s = key( i['metric'], i['keys'], params )
        s = 'keepLastValue(%s)' % [s] if keepLastValue
        # logger.debug ' s: %s' % [s]
        if i.has_key?( 'functions' )
          # logger.debug '  processing functions'
          i['functions'].each do |func|
            # logger.debug '    func: %s' % [func]
            func.each_pair do |f,v|
              v = nil if v == ''
              # logger.debug '  f=%s, v=%s' % [f,v]
              if v.class == String 
                # do a lookup based on the value of a model's field value
                if v[0,1] == '$'
                  d = params['device']
                  p = params['physical_port'].gsub('.','/')
                  mod, field = v.gsub('$','').split("__")
                  # logger.info "looking up MOD %s FIELD %s" % [mod,field]
                  i = mod.constantize.find_by_device_and_physical_port( d, p ).data[field]
                  v = "%.12f" % [ 1 / (i.to_f * 1000000 ) ]
                  logger.debug "      LOOKUP on %s, field %s (%s %s) = %s" % [ mod,field,d,p,v ]
                end
              end
              s = "%s(%s%s" % [ f, s, v == nil ? ')' : ',%s)' % [ v.to_s ] ]
              logger.debug '  %s' % [s]
            end
          end
        end
        logger.debug ' >: %s' % [s]
        metrics << s
      end
    else
      # metrics = [ stats_key( params ) ]
      metrics << "%s" % [ m ]
    end

    logger.debug 'output metric: %s' % [metrics]
    metrics
  end
  
  def _reverseDevice( name )
    name.split('.').reverse.join('.')
  end
  
  def key( metric, keys, params )
    # no keys, just return the metric
    logger.debug '  key for %s with %s=%s' % [metric,keys,params] 
    if keys.nil?
      return "%s" % [ metric ]
    else
      begin
        d = _reverseDevice( params['device'] )
      rescue
        # pass
      end
      h = []
      keys.each do |k|
        if k == 'device'
          h << d
        else
          h << params[k]
        end
      end
      s = metric % h
      # logger.debug "RETURN: %s" % [ s ]
      return s
    end
  end
  
  def _graphite_build( metrics, as, summarize )
    targets = []
    metrics.each do |t|

      if not summarize == nil
        a = summarize.split(',')
        t = "summarize(%s,'%s','%s')" % [t,a[0],a[1]]
      end
      # if not as == nil
      # if as == nil
      #   as = ''
      # end
      unless as == nil
        t = "alias(%s,'%s')" % [ t, as ]
      end
      # end
      # t.gsub!(',','%2C')
      targets << t
    end
    arg = ''
    targets.each do |t|
      arg = arg + '&target=%s' % t
    end
    
    arg
  end

  def graphite_fetch( targets, params )
    
    server = STATS_CONFIG['defaults']['server'] # rewrite if necessary later
    # proxy
    if params['format'] then f = params['format'] else f = 'raw' end
    if params['from'] then s = params['from'] else s = '-24h' end
    if params['until'] then e = params['until'] else e = '' end
    if params['summarize'] then summarize = params['summarize'] else summarize = nil end

    # format the alias name
    as = nil
    [ 'metric', 'device', 'physical_port', 'prefix', 'len' ].each do |i|
      if params[i]
        as = [] if as == nil
        as << params[i]
      end
    end
    unless as.nil? then as = as.join("/") end
      
    u = "/%s?format=%s%s&from=%s&until=%s" % [ 'render', f, _graphite_build(targets,as,summarize), s, e ]
    logger.debug 'graphite: http://' + server + u
    req = Net::HTTP::Get.new( u )
    s = Net::HTTP.new( server )
    s.request( req )
  end
    
  def redis_fetch( targets, params )
    
    keys = []
    data = $redis.pipelined do
      keys += targets.collect { |x| "pt:store:%s" % [x.split(".")[0...-1].join('.')] }
      keys.collect {  |k| $redis.hgetall( k ) }
    end
    # logger.info( "REDIS DATA %s\t%s" % [keys,data] )

    out = []
    keys.each_with_index { |k,i| 
      # if data[i][params['metric']]
      out << '%s/%s,%s,%s,%s|None,%s' % [params['metric'],params['device'],params['from'],params['until'], params['until'].to_i - params['from'].to_i,data[i][params['metric']]]
        # logger.info(" k=%s\ti=%s\t%s" % [k,i,s])
      # end
    }
    out
  end
  
  
end
