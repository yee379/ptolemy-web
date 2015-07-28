class TopologiesController < ApplicationController

  def index
    # @topologies = Topology.all
    render :template => 'topologies/index'
  end


  def devices
    p = devices_params
    neighbours = L1_Neighbour.where 'device ~ ?', p['device']
    @nodes, @links = graph( neighbours, 'device' )
  end
  
  def hostnames
    p = host_params
    neighbours = Host.where( p )
    @nodes, @links = graph( neighbours, 'host' )
  end

  def vlans
    p = vlan_params
    @nodes = []
    @links = []

    devices = Vlan.where( 'vlan = ?', p['vlan']).map{ |v| v['device'] }

    # all neighbours
    all_neighbours = L1_Neighbour.where 'device in (?)', devices
    # remove those not in vlan tree
    neighbours = []
    all_neighbours.each do | n |
      if devices.include? n['peer_device'] and devices.include? n['device']
        neighbours << n
      end
    end

    # TODO: actually determine the spanning tree too; ie if the link as the vlan trunked

    # logger.info 'neighbours (%s): %s' % [neighbours.size, neighbours]
    n, l = graph( neighbours, 'device' )
    @nodes.push(*n)
    @links.push(*l)
    
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
          # logger.debug i
          s = _do( i['hostname'].downcase )
          t = _do( i['device'].downcase )
          links << { 'source' => s, 'target' => t, 'source_port' => 'nic', 
            'target_port' => i['physical_port'], 'speed' => i['data']['speed'].to_i }
          links << { 'source' => t, 'target' => s, 'source_port' => i['physical_port'], 
            'target_port' => 'nic', 'speed' => i['data']['speed'].to_i }
        else
          raise 'unsupported topology peer type ' + type
        end
      end
      
      return @these_nodes, links
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
      params.permit( :vlan )
    end
    
end
