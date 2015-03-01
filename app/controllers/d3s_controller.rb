class D3sController < ApplicationController
  before_action :set_params
  
  private

    def set_params
      params.permit(:metric,:device,:physical_port,:source,:target)
    end

end
