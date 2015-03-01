json.array!(@dygraphs) do |dygraph|
  json.extract! dygraph, 
  json.url dygraph_url(dygraph, format: :json)
end