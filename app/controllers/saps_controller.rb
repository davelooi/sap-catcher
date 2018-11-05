class SapsController < ApplicationController
  before_action :set_sap, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  http_basic_authenticate_with name: ENV.fetch('BASIC_USERNAME'), password: ENV.fetch('BASIC_PASSWORD')

  # GET /saps
  # GET /saps.json
  def index
    @saps = Sap.all
  end

  # GET /saps/1
  # GET /saps/1.json
  def show
  end

  # GET /saps/new
  def new
    @sap = Sap.new
  end

  # GET /saps/1/edit
  def edit
  end

  # POST /saps
  # POST /saps.json
  def create
    @sap = Sap.new(payload: params)

    respond_to do |format|
      if @sap.save
        format.html { redirect_to @sap, notice: 'Sap was successfully created.' }
        format.json { render :show, status: :created, location: @sap }
      else
        format.html { render :new }
        format.json { render json: @sap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saps/1
  # PATCH/PUT /saps/1.json
  def update
    respond_to do |format|
      if @sap.update(sap_params)
        format.html { redirect_to @sap, notice: 'Sap was successfully updated.' }
        format.json { render :show, status: :ok, location: @sap }
      else
        format.html { render :edit }
        format.json { render json: @sap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saps/1
  # DELETE /saps/1.json
  def destroy
    @sap.destroy
    respond_to do |format|
      format.html { redirect_to saps_url, notice: 'Sap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sap
      @sap = Sap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sap_params
      params.fetch(:sap, {})
    end
end
