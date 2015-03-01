class NetengsController < ApplicationController


  def transceivers
    if params['format'] == 'json'
      @transceivers = TransceiversOutofspec.where( "data->'state'='True'")
    end
  end

  def device_uptimes
    if params['format'] == 'json'
      @devices = DeviceUptime.where( "? > created_at and ? < updated_at", params['start'], params['end'] )
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def uptime_params
      params.permit(:device,:format,:start,:end)
    end
end
