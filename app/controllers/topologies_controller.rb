require 'ipaddr'

class TopologiesController < ApplicationController

  def index
    # @topologies = Topology.all
    render :template => 'topologies/index'
  end


  def devices
    p = devices_params
    neighbours = L1_Neighbour.where 'device ~ ?', p['device']
    @nodes, @links = graph( neighbours, 'device' )
    render :template => 'topologies/paths'
  end
  
  def hosts
    p = host_params
    @nodes = []
    @links = []
    p.each do |k,v|
      neighbours = CachedHost.where( k+" = ?", v )
      n,l = graph( neighbours, 'host' )
      @nodes.push(*n)
      @links.push(*l)
    end
    render :template => 'topologies/paths'
  end

  def vlans
    p = vlan_params
    @nodes = []
    @links = []

    devices = []
    if p.include? :vlan and ! p['vlan'].nil?
      devices = Vlan.where( 'vlan = ?', p['vlan']).map{ |v| v['device'] }
    elsif p.include? :vlan_name and ! p['vlan_name'].nil?
      devices = Vlan.where( 'name ~ ?', p['vlan_name']).map{ |v| v['device'] }
    end
    
    # logger.info 'neighbours (%s): %s' % [neighbours.size, neighbours]
    n, l = graph( prune( devices ), 'device' )
    @nodes.push(*n)
    @links.push(*l)
    
    render :template => 'topologies/paths'
  end

  def subnets
    p = subnet_params
    @nodes = []
    @links = []

    neighbours = []
    
    cidr = []
    
    if p.has_key? 'subnet'
      Subnet.where( 'name ~ ?', p['subnet'] ).each do |subnet|
        cidr.push '%s/%s' % [subnet['prefix'].to_s, IPAddr.new(subnet['netmask'].to_s).to_i.to_s(2).count("1") ]
      end
    end
    
    if p.has_key? 'cidr'
      cidr << p['cidr']
    end

    cidr.each do |c|
      neighbours = CachedHost.where( "ip_address::inet << ?", c )
      n,l = graph( neighbours, 'host' )
      @nodes.push(*n)
      @links.push(*l)
    end
    
    # add device to device links
    n, l = graph( prune( @nodes ), 'device' )
    @nodes.push(*n)
    @links.push(*l)
    
    render :template => 'topologies/paths'
  end


  private

    # given an array of items, convert to a graph suitable
    def graph( items, type )
      
      @these_nodes = []
      links = []

      def _do( name )
        unless @these_nodes.include? name
          @these_nodes << name
        end
        name
      end
      
      items.each do |i|
        
        if type == 'device'
          s = _do( i['device'].downcase )
          t = _do( i['peer_device'].downcase )
          links << { 'source' => s, 'target' => t, 'source_port' => i['physical_port'], 
            'target_port' => i['peer_physical_port'], 'speed' => i['speed'].to_i }
          links << { 'source' => t, 'target' => s, 'source_port' => i['peer_physical_port'], 
            'target_port' => i['physical_port'], 'speed' => i['speed'].to_i }

        elsif type == 'host'

          unless i[:hostname].nil?
            s = _do( i['hostname'].downcase )
          else
            s = _do( i['ip_address'].gsub( '.', '_' ) )
          end
          
          unless i[:device].nil?
            t = _do( i['device'].downcase )
            links << { 'source' => s, 'target' => t, 'source_port' => 'nic', 
              'target_port' => i['physical_port'], 'speed' => i['data']['speed'].to_i }
            links << { 'source' => t, 'target' => s, 'source_port' => i['physical_port'], 
              'target_port' => 'nic', 'speed' => i['data']['speed'].to_i }
          end
          
        else
          
          raise 'unsupported topology peer type ' + type

        end
        
      end
      
      return @these_nodes, links
    end

    # prune
    # TODO: actually determine the spanning tree too; ie if the link as the vlan trunked
    def prune( devices )
      # all neighbours
      all_neighbours = L1_Neighbour.where 'device in (?)', devices
      # remove those not in vlan tree
      neighbours = []
      all_neighbours.each do | n |
        if devices.include? n['peer_device'] and devices.include? n['device']
          neighbours << n
        end
      end
      return neighbours
    end


    def topology_params
      params[:topology]
    end
    
    def devices_params
      params.permit( :device )
    end

    def host_params
      params.permit( :hostname, :ip_address, :mac_address )
    end
    
    def vlan_params
      params.permit( :vlan, :vlan_name )
    end
   
    def subnet_params
      params.permit( :cidr, :subnet )
    end
    
end
