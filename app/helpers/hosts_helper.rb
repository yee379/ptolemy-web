require "ipaddr"
module HostsHelper
  
  def validate_as_ip_address( param )
    IPAddr.new(param)
  end
  
  def validate_as_mac_address( param )
    is_mac = false
    if param =~ %r/[^:\-](?:[0-9A-F][0-9A-F][:\-]){5}[0-9A-F][0-9A-F][^:\-]/io
      is_mac = true
    elsif param =~ %r/^[0-9A-F]{4}\.[0-9A-F]{4}\.[0-9A-F]{4}$/io
      is_mac = true
    elsif param =~ %r/^([0-9A-F][0-9A-F][:]){5}[0-9A-F][0-9A-F]$/io
        is_mac = true
    end
    
    unless is_mac
      raise 'invalid mac address'
    end
    
    # return consistent mac address format
    param.downcase.gsub( /[\:\.]/, '' ).scan( /.{4}|.+/ ).join('.')

  end
  
  def parse_param( q )
    p = {}
    logger.debug(q)
    begin
      p['ip_address'] = validate_as_ip_address q
    rescue
    end
    begin
      p['mac_address'] = validate_as_mac_address q
    rescue
    end
    if p['ip_address'].nil? and p['mac_address'].nil?
      p['hostname'] = q
    end
    logger.debug p
    p
  end
  
  # MVC humbug!
  # def get_hosts( p )
  #   # p = parse_param params
  #   extra = ''
  #   # remove intermediate network devices from list
  #   if p['topology'].nil?
  #     extra = ' AND span_device IS NULL AND span_physical_port IS NULL'
  #   end
  #   hosts = nil
  #   if not p['hostname'].nil?
  #     hosts = Host.where( 'hostname ~ ? '%extra, p['hostname'] )
  #   elsif not p['ip_address'].nil?
  #     hosts = Host.where( 'ip_address = ? '%extra, p['ip_address']  )
  #   elsif not p['mac_address'].nil?
  #     hosts = Host.where( 'mac_address = ? '%extra, p['mac_address']  )
  #   end
  #   # logger.error("GET HOSTS %s: %s" % [p, @hosts])
  #   hosts
  # end
  
end
