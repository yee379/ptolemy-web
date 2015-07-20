class WeathermapsController < ApplicationController
  before_action only: [:show]

  def show
    render params[:map]
  end
  

end
