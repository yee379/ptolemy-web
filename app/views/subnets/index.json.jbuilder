json.array!(@subnets) do |s|
  json.name         s.name
  json.prefix       s.prefix
  json.netmask      s.netmask
  json.default_gw   s.default_gw == "None" ? nil : s.default_gw
  json.vlan         s.vlan.to_i == 0 ? nil : s.vlan.to_i
  json.description  s.description == "None" ? nil :  s.description
  json.routed_on    s.routed_on
  json.updated_at   s.updated_at
  json.internet_free_zone ! [ '^172\.27', '^172\.26', '^172\.25', '^172\.24', '^172\.23', '^172\.22', '^172\.21', '^172\.20', '^172\.19', '^172\.18', '^172\.17', '^172\.16', '^192\.168\.', '^10\.' ].find { |e| s.prefix.match( e ) }.nil?
end