json.array!(@vlans) do |vlan|
  json.extract! vlan, 
  json.url vlan_url(vlan, format: :json)
end