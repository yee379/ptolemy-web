require 'tree'
require 'ipaddr'

class SubnetsController < ApplicationController
  before_action :set_subnet, only: [:show, :edit, :update, :destroy]



  def autocomplete
    @subnets = Subnet.where autocomplete_params
  end

  # GET /subnets
  # GET /subnets.json
  def index
    respond_to do |format|
      format.html
      format.json { 
        @subnets = Subnet.all
      }
    end
  end
  
  
  def api_subnet_name_list
    @subnets = Subnet.where autocomplete_params
  end
  
  def _subnet
    p = submit_params
    @s = nil
    if p['name']
      @s = Subnet.where( 'name = :name', p )
    elsif @p['prefix'] and p['netmask']
      @s = Subnet.where( 'prefix = :prefix AND netmask = :netmask', p )
    end
    @s.first
  end
  
  def ips
    
    @s = _subnet
    # get block
    # convert to cidr mask
    mask = IPAddr.new(@s['netmask']).to_i.to_s(2).count("1")
    @subnet = @s['prefix'] + '/' + mask.to_s
    #'134.79.230.0/24'
    @ips = IPAddr.new(@subnet).to_range
    # get arps
    @arps = {}
    logger.info("SUBNET: %s" % (@subnet))
    Arp.where( 'ip_address << :subnet', { subnet: @subnet }).each do |a|
      ip = a.ip_address.to_s()
      unless @arps[ip]
        @arps[ip] = []
      end
      @arps[ip] << a
    end
  end
  
  def subnet_graph
    # order as { :name => 'blah', :children => [] }
    # use the :type as tree
    root = Tree::TreeNode.new('root')
    
    SubnetGraph.all.each do |i|

      next if i.name.nil? or [ "SPARE", "SPARE-IFZ", "SPARE-IFZLITE", "RESERVED FARM" ].include? i.name.upcase or i.name =~ /SPARE/
      
      pos = root # always start from root
      logger.debug ">> #{i.name} #{i.types}"

      if i.types.any?
        i.types.each do |x|
          t = x.downcase
          n = Tree::TreeNode.new(t)
          # puts "  pos #{pos.name} => add (#{t})"

          has_already = false
          pos.children do |c|
            # puts "    comparing #{t} to #{c.name}"
            if t == c.name
              logger.debug "    child #{t} already exists"
              has_already = true 
              n = c
            end
          end
          
          unless has_already
            logger.debug "    creating new child #{n.name} with parent #{pos.name}"
            pos << n 
          end

          # ptr to next
          pos = n
        end
      end
      
      # add leaf of subnet name
      unless pos.name == "root"
        d = "#{i.prefix}/#{i.prefix_len}"
        logger.debug "    adding leaf #{i.name.downcase} to #{pos.name}"
        begin
          pos << Tree::TreeNode.new( i.name.downcase, d )
        rescue
          logger.debug("error")
        end
      end
      
    end
    
    render :json => root.as_json
  end
  
  
  private
  
    def autocomplete_params
      params.permit(:q)
    end

    def submit_params
      params.permit(:name,:prefix,:netmask,:prefix_len)
    end


end
