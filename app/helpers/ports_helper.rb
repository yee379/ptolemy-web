module PortsHelper

  @@port_map = {
    "Gi" => [ /GigabitEthernet/, /Gi/ ],
    "Fa" => [ /FastEthernet/ ],
    "Eth" => [ /Ethernet/ ],
    "Te"  => [ /TenGigabitEthernet/ ],
    "TenGigE"  => [ /TenGigE/ ],
    "HundredGigE"  => [ /HundredGigE/ ]
  }

  # normalise port name
  def truncate_port( port )
    
    # normalise port name
    @@port_map.each_pair do |v,a|
      a.each do |r|
        if port =~ r
          port.gsub!( r, v )
          break
        end
      end
    end
    
    port
    
  end
  
  def get_port_range( beg, final )

    # logger.warn "range %s -> %s" % [beg,final]
    common = ''
    beg.split('').each_with_index do |one,i|
      if final[i] == one
        common += one
      end
    end
    
    b = beg.gsub(common,'').to_i
    e = final.gsub(common,'').to_i
    # logger.warn(" COMON: %s (%s %s)" % [common, b, e ])
    c = b
    n = []
    while c <= e
      n << '%s%s' % [ truncate_port(common), c ]
      c += 1
    end
    n
  end
  
  def parse_ports( ports )
    # break down the common port ranges and lists
    if ports.nil?
      ports = []
    elsif ports.include? '-'
      # check for a range on the physical port
      ports = ports.split('-')
      if ports.length == 2
        ports = get_port_range( ports[0], ports[1] )
      end
    elsif ports.include? ','
      ports = ports.split(',')
    else
      ports = [ truncate_port(ports) ]
    end
    ports
  end
  
  def port_search_array( ports )
    search = []
    if ports.nil?
      search = nil
    else
      search = []
      parse_ports( ports ).each do |i|
        search << "physical_port='%s'" % [i]
      end
    end
    search

  end
  
  def port_search_truncate( ports )
    if ports.nil?
      return nil
    end
    return parse_ports( ports )
  end
  
  
end
