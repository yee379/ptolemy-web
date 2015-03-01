json.array!(@techcoords) do |techcoord|
  json.extract! techcoord, 
  json.url techcoord_url(techcoord, format: :json)
end