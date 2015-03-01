json.array!(@delegates) do |delegate|
  json.extract! delegate, 
  json.url delegate_url(delegate, format: :json)
end