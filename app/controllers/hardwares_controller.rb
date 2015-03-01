class HardwaresController < ApplicationController
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]

  # GET /hardwares
  # GET /hardwares.json
  def index
    @hardwares = Hardware.all.order('model')
  end

  # GET /hardwares/1
  # GET /hardwares/1.json
  def show
  end

  # GET /hardwares/new
  def new
    @hardware = Hardware.new
  end

  # GET /hardwares/1/edit
  def edit
  end

  # POST /hardwares
  # POST /hardwares.json
  def create
    @hardware = Hardware.new(hardware_params)

    respond_to do |format|
      if @hardware.save
        format.html { redirect_to @hardware, notice: 'Hardware was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hardware }
      else
        format.html { render action: 'new' }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardwares/1
  # PATCH/PUT /hardwares/1.json
  def update
    respond_to do |format|
      if @hardware.update(hardware_params)
        # format.html { redirect_to @hardware, notice: 'Hardware was successfully updated.' }
        format.html { redirect_to hardwares_url, notice: 'Hardware was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwares/1
  # DELETE /hardwares/1.json
  def destroy
    @hardware.destroy
    respond_to do |format|
      format.html { redirect_to hardwares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardware_params
      params.require(:hardware).permit(:id, :vendor, :model, :bulletin_url, :available, :end_of_sale, :end_of_support, :price)
    end
end
