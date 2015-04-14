require 'ipaddr'

module SubnetsHelper

  def subnet_from_name( name )
    Subnet.where( 'name = ?', name )
  end
  
  def subnet_from_prefix( prefix, netmask )
    @s = Subnet.where( 'prefix = ? AND netmask = ?', name, netmask )
    @s.shift    
  end

  def subnet( p )
    if p['name']
      return subnet_from_name( p['name'] )
    elsif p['prefix'] and p['netmask']
      return subnet_from_prefix( p['prefix'], p['netmask'] )
    end
  end
  
  def netmask_to_prefix_len( mask )
    this = IPAddr.new( mask ).to_i.to_s(2).count("1")
    # logger.error("THIS: %s" % [this])
    this
  end
end
