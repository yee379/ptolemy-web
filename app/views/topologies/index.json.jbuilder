json.array!(@topologies) do |topology|
  json.extract! topology, 
  json.url topology_url(topology, format: :json)
end