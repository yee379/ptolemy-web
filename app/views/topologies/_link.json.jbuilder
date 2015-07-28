json.array!( @links ) do | json, link |
  json.id 'L' + link['source'].gsub('.','-') + '_' + link['source_port'].gsub('/','-') + '_to_' + link['target'].gsub('.','-') + '_' + link['target_port'].gsub('/','-') 
  json.source  link['source']
  json.target  link['target']
  # json.source_port link['source_port'].gsub("/",".")
  # json.target_port link['target_port'].gsub("/",".")
  json.source_port link['source_port']
  json.target_port link['target_port']
  json.speed   link['speed']
  json.stats do | s |
    # [ 'port.util.pc.out', 'port.util.pc.in' ].each { |item|
    [ 'port.util.pc.out' ].each { |item|
      # BIG UGLY HACK!... stupid ap's don't have stats, so use the other end instead for data
      if link['source'].start_with? 'ap-' or ! link['source'].start_with?( 'rtr-', 'swh-' )
        s.set!( item.gsub('.out','.in'), "%s/%s/%s" % [item, link['target'], link['target_port'].gsub("/",".")])
      else
        s.set!( item, "%s/%s/%s" % [item, link['source'], link['source_port'].gsub("/",".")])
      end
    }
  end
  json.charts do | s |
    [ 'port' ].each { |item|
      # BIG UGLY HACK!... stupid ap's don't have stats, so use the other end instead for data
      if link['source'].start_with? 'ap-' or ! link['source'].start_with?( 'rtr-', 'swh-' )
        s.set!( item.gsub('.out','.in'), "/graphs.horizon/%s/%s/%s" % [item, link['target'], link['target_port'].gsub("/",".")])
      else
        s.set!( item, "/graphs.horizon/%s/%s/%s" % [item, link['source'], link['source_port'].gsub('/','.') ] )
      end
    }
  end
end