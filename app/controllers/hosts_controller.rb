class HostsController < ApplicationController
  # before_action :set_host, only: [:show, :edit, :update, :destroy]
  include HostsHelper
  include SubnetsHelper

  def api_host_locations
    p = loc_params
    @locs = Rack_Location.where( 'hostname ~ ?', p['hostname'] ).order('hostname')
  end

  def api_hostnames
    h = hosts_params
    # logger.debug h
    if h['query'].nil?
      @hosts = HostList.all
    else
      @hosts = HostList.where( 'hostname ~ ?', h['query'] ).order('hostname')
    end
    @hosts
  end

  def api_ips
    h = hosts_params
    # logger.debug h
    if h['query'].nil?
      @ips = IpList.all
    else
      @ips = IpList.where( 'ip ~ ?', h['query'] ).order('ip')
    end
    @ips
  end

  def api_macaddresses
    h = hosts_params
    # logger.debug h
    if h['query'].nil?
      @macs = MacAddressList.all
    else
      @macs = MacAddressList.where( 'mac_address ~ ?', h['query'] ).order('mac_address')
    end
    @macs
  end


  def on_subnet
    
    @params = subnet_params
    if not index_params.include?('format') or index_params['format'] == 'html'
      @params
    else
      @subnet = subnet( @params ).first
      s = @subnet['prefix'] + '/' + netmask_to_prefix_len( @subnet['netmask'] ).to_s
      @hosts = CachedHost.where( "ip_address::inet << ?", s )
    end

  end

  # provide query frontends about where hosts are on the network
  def index
  
    if not index_params.include?('format') or index_params['format'] == 'html'
      @hosts = index_params

    else
      # determine what q is, and remove
      if index_params.include?('q')
        found = parse_param index_params['q']
        # logger.info("FOUND: %s - > %s" % [index_params,found] )
        index_params = found
      end
    
      method = 'hostname'
      [ 'hostname', 'ip_address', 'mac_address' ].each do |m|
        if index_params.include?(m) and not index_params[m].nil?
          method = m
        end
      end

      @hosts = CachedHost.where( method.to_s + ' ~* ?', index_params[method].to_s )
    end
    @hosts
  end

  private
  
    def index_params
      # logger.debug params.permit(:q)
      params.permit(:q,:ip_address,:mac_address,:hostname,:format)
    end
    
    def api_params
      params.permit(:hostname,:ip_address,:mac_address,:topology)
    end
  
    def loc_params
      params.permit(:hostname)
    end
  
    def hosts_params
      params.permit(:query,:format)
    end
  
    def subnet_params
      params.permit(:name,:format)
    end
end
