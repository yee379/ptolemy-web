json.array!(@d3s) do |d3|
  json.extract! d3, 
  json.url d3_url(d3, format: :json)
end