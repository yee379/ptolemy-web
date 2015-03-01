json.array!(@ports) do |p|

  json.extract!( p, :device, :physical_port, :created_at, :updated_at )
  json.status p.status()
  json.alias p['alias']
  
  json.duplex_admin_status   p.data['duplex_admin_status']
  json.duplex_status   p.data['duplex_status']
  json.speed           p.data['speed']
  json.speed_status    p.data['speed_status']
  json.speed_duplex    p.speed_duplex()
  json.autoneg         p.autoneg()
  
  json.portfast p.data['portfast']
  
  json.vlans           p.vlans_with_names(@vlan_names)
  json.native_vlan     p.data['native_vlan']
  json.trunked_vlans   p.data['trunked_vlans']
  
  json.hosts p.hosts
  json.peers        p.peers

end