json.array!(@datacenters) do |datacenter|
  json.extract! datacenter, 
  json.url datacenter_url(datacenter, format: :json)
end