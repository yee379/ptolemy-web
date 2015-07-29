class WeathermapsController < ApplicationController
  before_action only: [:show]

  def show
    @params = weathermap_params    
    @title = @params[:map].titlecase + " Weathermap"
    render :template => "weathermaps/show"
  end
  

  private
  
    def weathermap_params
      params.permit( :map )
    end
    
  
end
