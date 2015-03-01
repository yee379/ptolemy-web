class PerformancesController < ApplicationController

  def device
    @device = device_params
  end

  def device_ping
    @device = device_params
  end


  def subnet
    @prefix = params['prefix']
    @len = params['len']
  end

  private

    def device_params
      params[:device]
    end
   
    def subnet_params
      params.permit( :prefix, :len, :name )
    end
    
end
