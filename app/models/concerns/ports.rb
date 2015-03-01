module Ports
  extend ActiveSupport::Concern
  
  def alias
    a = '-'
    if not self.data.nil? and not self.data['alias'].nil?
      a = self.data['alias']
    elsif self.alias
      a = self.alias
    end
    a
  end
  
  def status
    s = 'notconnect'
    if self.data['op_status'] == "True" and self.data['admin_status'] == "True"
      s = 'connected'
    elsif not self.data['admin_status'] == "True"
      s = 'disabled'
    end
    s
  end

  def speed_duplex
    s = 'unknown'
    if self.status() == 'connected' and ( !self.data['speed'].nil? and !self.data['duplex_status'].nil? )
      s = self.data['speed'] + '/' + self.data['duplex_status']
    end
    s
  end

  def autoneg
    s = 'unknown'
    if self.data['speed_admin_status'] == 'auto' or self.data['duplex_admin_status'] == 'auto'
      s = 'auto'
    elsif self.data['speed_admin_status'] != 'auto' and self.data['duplex_admin_status'] != 'auto'
      s = 'fixed'
    end
    # elsif self.duplex_admin_status 
    s
  end

  def vlans
    a = []
    n = self.native_vlan()
    unless n.nil?
      a << n
    end
    self.trunked_vlans().each do |v|
      a << v
    end
    a
  end
  
  def vlans_with_names( hash )
    out = []
    vlans().each do |v|
      s = v.to_s
      unless hash[v].nil?
        s = '['+hash[v].to_s+'] '+ s
      end
      out << s
    end
    out
  end
  
  
  
  
  def native_vlan
    a = nil
    unless self.data['native_vlan'].nil?
      a = self.data['native_vlan'].to_i
    end
    a
  end
  
  def trunked_vlans
    a = []
    unless self.data['trunked_vlans'].nil?
      b = eval( self.data['trunked_vlans'] )
      b.each { |v| a << v.to_i }
    end
    a
  end
  
  def portfast
    self.data['portfast']
  end
  
end