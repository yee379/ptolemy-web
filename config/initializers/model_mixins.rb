class PortModelMixin < ActiveRecord::Base

  self.abstract_class = true
  
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
    unless self.data['native_vlan'].nil?
      a << eval( self.data['native_vlan'] )
    end
    unless self.data['trunked_vlans'].nil?
      b = eval( self.data['trunked_vlans'] )
      logger.error("%s" % [b])
      b.each { |v| a << v }
    end
    a
  end
    
end

