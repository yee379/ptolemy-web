json.array!(@subnets) do |s|
  json.name         s.name
  json.prefix       s.prefix
  json.netmask      s.netmask
  json.default_gw   s.default_gw
  json.vlan s.vlan.to_i == 0 ? nil : s.vlan.to_i
  json.description  s.description
  json.routed_on    s.routed_on
  json.updated_at   s.updated_at
end