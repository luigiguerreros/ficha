class GestionsController < ApplicationController
  before_action :set_gestion, only: [:show, :edit, :update, :destroy]

  # GET /gestions
  # GET /gestions.json
  def index
    @gestions = Gestion.all
  end

  # GET /gestions/1
  # GET /gestions/1.json
  def show
  end

  # GET /gestions/new
  def new
    @gestion = Gestion.new
  end

  # GET /gestions/1/edit
  def edit
  end

  # POST /gestions
  # POST /gestions.json
  def create
    @gestion = Gestion.new(gestion_params)

    respond_to do |format|
      if @gestion.save
        format.html { redirect_to @gestion, notice: 'Gestion was successfully created.' }
        format.json { render :show, status: :created, location: @gestion }
      else
        format.html { render :new }
        format.json { render json: @gestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gestions/1
  # PATCH/PUT /gestions/1.json
  def update
    respond_to do |format|
      if @gestion.update(gestion_params)
        format.html { redirect_to @gestion, notice: 'Gestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @gestion }
      else
        format.html { render :edit }
        format.json { render json: @gestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gestions/1
  # DELETE /gestions/1.json
  def destroy
    @gestion.destroy
    respond_to do |format|
      format.html { redirect_to gestions_url, notice: 'Gestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestion
      @gestion = Gestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gestion_params
      params.require(:gestion).permit(:codigo, :origen_id, :campana_id, :zonal_id, :tipo_id, :subtipo_id, :paquete_id, :linea_id, :internet_id, :administrativa_id, :tecno_id, :modopago_id, :monto_instalacion, :promocion_id, :descuento_id, :equipamiento, :telefono_id, :caracteristicatelefono_id, :modem_id, :caracteristicamodem_id, :antenapunto_id, :deco1_id, :caracteristicadeco1_id, :deco2_id, :caracteristicadeco2_id)
    end
end
