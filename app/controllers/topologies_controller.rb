class TopologiesController < ApplicationController

  def index
    @topologies = Topology.all
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


  private

    # given an array of items, convert to a graph suitable
    def graph( items, type )
      
      @nodes = []
      links = []

      def _do( name )
        unless @nodes.include? name
          @nodes << name
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
          logger.debug i
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
      
      return @nodes, links
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
end
