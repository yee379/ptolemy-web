json.array!(@wirelesses) do |wireless|
  json.extract! wireless, 
  json.url wireless_url(wireless, format: :json)
end