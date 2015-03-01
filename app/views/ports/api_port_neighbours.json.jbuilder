json.data @neighbours do |json,n|
  json.extract! n, :device, :physical_port, :mac_address, :vlan, :ip_address, :hostname, :created_at, :updated_at
end