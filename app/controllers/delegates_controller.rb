class DelegatesController < ApplicationController
  
  # include DelegatesHelper
  # turn off crsf for now
  # skip_before_filter :verify_authenticity_token  

  # before_action :set_delegate, only: [:update]

  # GET /delegates
  # # GET /delegates.json
  # def index
  #   # @delegates = Delegate.all
  #   @delegates = []
  # end
  # 
  # # GET /delegates/1
  # # GET /delegates/1.json
  # def show
  # end
  # 
  # # GET /delegates/new
  # def new
  #   @delegate = Delegate.new
  # end

  # # GET /delegates/1/edit
  # def edit
  # end

  # POST /delegates
  # POST /delegates.json
  # def create
  #   @delegate = Delegate.new(delegate_params)
  # 
  #   respond_to do |format|
  #     if @delegate.save
  #       format.html { redirect_to @delegate, notice: 'Delegate was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @delegate }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @delegate.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /delegates/1
  # PATCH/PUT /delegates/1.json
  # def update
  #   delegate_port( params['device'], params['physical_port'], params ) do |type,data|
  #     # logger.info("#{type}\t#{data}")
  #     if type == 'data'
  #       @ports = data 
  #     elsif type == 'error'
  #       @error = data
  #     end
  #   end
  #   
  #   respond_to do |format|
  #     if @ports
  #       format.json { render json: renormalise_port_data( @ports ) }
  #     else
  #       format.json { render json: @error, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /delegates/1
  # DELETE /delegates/1.json
  # def destroy
  #   @delegate.destroy
  #   respond_to do |format|
  #     format.html { redirect_to delegates_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_delegate
    #   @delegate = Delegate.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def delegate_params
    #   params[:device,:physical_port,:state,:alias,:vlan,:speed_duplex,:autoneg,:voice_vlan]
    # end
end
