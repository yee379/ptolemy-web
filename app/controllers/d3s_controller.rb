class D3sController < ApplicationController
  before_action :set_params
  
  def horizon
    if params.has_key? :layout and params[:layout] == 'naked'
      @layout = params[:layout]
      render 'd3s/horizon', :layout => params[:layout]
    end
  end
  
  
  private

    def set_params
      params.permit(:metric,:device,:physical_port,:source,:target,:axis_on,:layout)
    end

end
