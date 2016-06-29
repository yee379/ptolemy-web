class GrafanasController < ApplicationController
  
  before_action :set_params

  include PortsHelper
    
  
  def port
    # add the neighbour port information if displaying ports
    @speed = 1000
    if params.has_key? :metric and params[:metric] == 'port'
      ports = Port.where( :device => params[:device], :physical_port => stitch_port( params ) )
      @extra = pformat_neighbours( ports )
      ports.each do |p|
        # logger.warn "PORT %s" % (p.data['speed'])
        @speed = p.data['speed']
      end
    end
    # get the port speed
    @fqdn = params[:device]
    @device = params[:device].split('.').reverse!.join('.')
    @port = stitch_port( params, delimiter='.' )
    @speed = @speed.to_i * 1000000
    @packets = @speed / 64
  end
  
  
  def device
    @fqdn = params[:device]
    @device = params[:device].split('.').reverse!.join('.')
  end
    
  
  private

    def set_params
      params.permit(:metric,:device,:physical_port)
    end

end
