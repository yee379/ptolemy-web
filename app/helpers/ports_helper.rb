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
  
  def stitch_port( params, delim='/' )
    if params.has_key? :physical_port
       return params['physical_port'].gsub('.', delim)
    else
      port = params[:p1]
      port = port + delim + params[:p2] if params.has_key? :p2
      port = port + delim + params[:p3] if params.has_key? :p3
      port = port + delim + params[:p4] if params.has_key? :p4
      return port
    end
  end
  
  def pformat_neighbours( ports )
    # returns human readable output of peers and hosts of the active record Port
    p = ports.first
    unless p.nil?
      devices = []
      unless p.peers.nil?
        p.peers.each do |d|
          unless d['peer_device'].nil?
            this = '%s:%s' * [ d['peer_device'], d['peer_physical_port'] ]
            devices <<  this unless devices.include? this
          end
        end
      end
      hosts = []
      unless p.hosts.nil?
        p.hosts.each do |p|
          unless p['mac_address'].nil?
            this = '%s (%s@%s)' % [p['hostname'], p['ip_address'], p['mac_address'] ] 
            hosts << this unless hosts.include? this
          end
        end
      end
    end
    if devices.length > 0
      'Peer(s) %s' % devices.join( ', ' )
    elsif hosts.length > 0 
      'Host(s) %s' % hosts.join( ', ' )
    else
      'Peer(s) %s, Host(s) %s' % [ devices, hosts ]
    end
  end
  
end
