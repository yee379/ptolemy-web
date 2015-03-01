class HelpdesksController < ApplicationController
  before_action :set_helpdesk, only: [:show, :edit, :update, :destroy]

  # GET /helpdesks
  # GET /helpdesks.json
  def index
    @helpdesks = Helpdesk.all
  end

  # GET /helpdesks/1
  # GET /helpdesks/1.json
  def show
  end

  # GET /helpdesks/new
  def new
    @helpdesk = Helpdesk.new
  end

  # GET /helpdesks/1/edit
  def edit
  end

  # POST /helpdesks
  # POST /helpdesks.json
  def create
    @helpdesk = Helpdesk.new(helpdesk_params)

    respond_to do |format|
      if @helpdesk.save
        format.html { redirect_to @helpdesk, notice: 'Helpdesk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @helpdesk }
      else
        format.html { render action: 'new' }
        format.json { render json: @helpdesk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helpdesks/1
  # PATCH/PUT /helpdesks/1.json
  def update
    respond_to do |format|
      if @helpdesk.update(helpdesk_params)
        format.html { redirect_to @helpdesk, notice: 'Helpdesk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @helpdesk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helpdesks/1
  # DELETE /helpdesks/1.json
  def destroy
    @helpdesk.destroy
    respond_to do |format|
      format.html { redirect_to helpdesks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helpdesk
      @helpdesk = Helpdesk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def helpdesk_params
      params[:helpdesk]
    end
end
