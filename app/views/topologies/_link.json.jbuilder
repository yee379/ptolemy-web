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
      s.set!( item, "%s/%s/%s" % [item, link['source'], link['source_port'].gsub("/",".")])
    }
  end
  json.charts do | s |
    [ 'port' ].each { |item|
      s.set!( item, "/graphs.horizon/%s/%s/%s" % [item, link['source'], link['source_port'].gsub('/','.') ] )
    }
  end
end