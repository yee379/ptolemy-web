class PhysicalSecuritiesController < ApplicationController
  before_action :set_physical_security, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  # GET /physical_securities
  # GET /physical_securities.json
  def index
    @physical_securities = PhysicalSecurity.all
  end

  # GET /physical_securities/1
  # GET /physical_securities/1.json
  def show
  end

  # GET /physical_securities/new
  def new
    @physical_security = PhysicalSecurity.new
  end

  # GET /physical_securities/1/edit
  def edit
  end

  # POST /physical_securities
  # POST /physical_securities.json
  def create
    @physical_security = PhysicalSecurity.new(physical_security_params)

    respond_to do |format|
      if @physical_security.save
        format.html { redirect_to @physical_security, notice: 'Physical security was successfully created.' }
        format.json { render action: 'show', status: :created, location: @physical_security }
      else
        format.html { render action: 'new' }
        format.json { render json: @physical_security.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_securities/1
  # PATCH/PUT /physical_securities/1.json
  def update
    respond_to do |format|
      if @physical_security.update(physical_security_params)
        format.html { redirect_to @physical_security, notice: 'Physical security was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @physical_security.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_securities/1
  # DELETE /physical_securities/1.json
  def destroy
    @physical_security.destroy
    respond_to do |format|
      format.html { redirect_to physical_securities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_security
      @physical_security = PhysicalSecurity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_security_params
      params.require(:physical_security).permit(:device, :environment_type, :environment, :cabinet)
    end
end
