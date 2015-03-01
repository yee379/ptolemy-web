class WeathermapsController < ApplicationController
  before_action :set_weathermap, only: [:show, :edit, :update, :destroy]

  # GET /weathermaps
  # GET /weathermaps.json
  def index
    @weathermaps = Weathermap.all
  end

  def map
    respond_to do |format|
      format.html { render params['map'] }
    end
  end



  # GET /weathermaps/1
  # GET /weathermaps/1.json
  def show
  end

  # GET /weathermaps/new
  def new
    @weathermap = Weathermap.new
  end

  # GET /weathermaps/1/edit
  def edit
  end

  # POST /weathermaps
  # POST /weathermaps.json
  def create
    @weathermap = Weathermap.new(weathermap_params)

    respond_to do |format|
      if @weathermap.save
        format.html { redirect_to @weathermap, notice: 'Weathermap was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weathermap }
      else
        format.html { render action: 'new' }
        format.json { render json: @weathermap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weathermaps/1
  # PATCH/PUT /weathermaps/1.json
  def update
    respond_to do |format|
      if @weathermap.update(weathermap_params)
        format.html { redirect_to @weathermap, notice: 'Weathermap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weathermap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weathermaps/1
  # DELETE /weathermaps/1.json
  def destroy
    @weathermap.destroy
    respond_to do |format|
      format.html { redirect_to weathermaps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weathermap
      @weathermap = Weathermap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weathermap_params
      params[:weathermap]
    end
end
