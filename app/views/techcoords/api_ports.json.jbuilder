json.array!(@ports) do |p|

  json.extract! p, :device, :physical_port, :created_at, :updated_at
  json.alias p.alias()
  json.status p.status()
  
  # json.speed_duplex    p.speed_duplex()
  # json.autoneg         p.autoneg()
  
  # json.portfast p.data['portfast']
  
  json.native_vlan     p.native_vlan()
  json.trunked_vlans   p.trunked_vlans()
  json.vlans           p.vlans()

  json.hosts        p.hosts
  json.peers        p.peers
  json.servers    p.servers

end
