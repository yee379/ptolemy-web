json.array!(@performances) do |performance|
  json.extract! performance, 
  json.url performance_url(performance, format: :json)
end