json.array!(@weathermaps) do |weathermap|
  json.extract! weathermap, 
  json.url weathermap_url(weathermap, format: :json)
end