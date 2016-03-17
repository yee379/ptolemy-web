class D3sController < ApplicationController
  before_action :set_params

  include PortsHelper
    
  def horizon
    # add the neighbour port information if displaying ports
    if params.has_key? :metric and params[:metric] == 'port'
      ports = Port.where( :device => params[:device], :physical_port => stitch_port( params ) )
      @extra = pformat_neighbours( ports )
    end
    if params.has_key? :layout and params[:layout] == 'naked'
      @layout = params[:layout]
      # params['axis_on'] = 'bottom'
      render 'd3s/horizon', :layout => params[:layout]
    end
  end
  
  
  private

    def set_params
      params.permit(:metric,:device,:physical_port,:source,:target,:axis_on,:layout)
    end

end
