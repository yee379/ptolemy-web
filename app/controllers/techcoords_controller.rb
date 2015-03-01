class TechcoordsController < ApplicationController

  include PortsHelper

  def api_ports
    @ports = TechcoordPort.where( "device ~ ?", port_params['device'] )
  end
  

  def api_locations
    @locations = RackLocation.where( "hostname ~ ?", hostname_params['hostname'] )
  end
  
  
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_params
      params.permit( :device )
    end

    def hostname_params
      params.permit( :hostname )
    end

end
