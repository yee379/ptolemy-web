class CybersController < ApplicationController
  before_action :set_cyber, only: [:show, :edit, :update, :destroy]

  # GET /cybers
  # GET /cybers.json
  def index
    # @cybers = Cyber.all
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyber
      @cyber = Cyber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cyber_params
      params[:cyber]
    end
end
