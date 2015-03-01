class TelecomsController < ApplicationController
  before_action :set_telecom, only: [:show, :edit, :update, :destroy]

  def api_telephones
    @telephones = Telephone.all
  end

  def telephones
  end

  # GET /telecoms
  # GET /telecoms.json
  def index
  end

end
