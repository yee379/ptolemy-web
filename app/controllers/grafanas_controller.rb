class GrafanasController < ApplicationController
  
  before_action :set_params

  include PortsHelper
    
  
  def port
    # add the neighbour port information if displaying ports
    if params.has_key? :metric and params[:metric] == 'port'
      ports = Port.where( :device => params[:device], :physical_port => stitch_port( params ) )
      @extra = pformat_neighbours( ports )
    end
    @fqdn = params[:device]
    @device = params[:device].split('.').reverse!.join('.')
    @port = stitch_port( params, delimiter='.' )
  end
  
  private

    def set_params
      params.permit(:metric,:device,:physical_port)
    end

end
