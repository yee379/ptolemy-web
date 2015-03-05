json.array!( @hosts ) do |host|
  json.extract! host, :hostname, :mac_address, :ip_address, :device, :physical_port
  # , :device, :physical_port, :routers, :span_device, :span_physical_port

  # this differs as it's already processed by the caching system

  if host.data?
    json.l2_vlan  host.vlan.to_i

    json.alias  host.data['alias']
    json.status host.status()

    json.duplex_admin_status   host.data['duplex_admin_status']
    json.duplex_status   host.data['duplex_status']
    json.speed           host.data['speed']
    json.speed_status    host.data['speed_status']
    json.speed_duplex    host.speed_duplex()
    json.autoneg         host.autoneg()
 
    json.portfast host.data['portfast']
 
    json.vlans           host.vlans()
    json.native_vlan     host.data['native_vlan'].to_i
    json.trunked_vlans   host.data['trunked_vlans']
  end
  json.updated_at      host.updated_at
end