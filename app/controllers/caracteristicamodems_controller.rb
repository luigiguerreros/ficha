class CaracteristicamodemsController < ApplicationController
  before_action :set_caracteristicamodem, only: [:show, :edit, :update, :destroy]

  # GET /caracteristicamodems
  # GET /caracteristicamodems.json
  def index
    @caracteristicamodems = Caracteristicamodem.all
  end

  # GET /caracteristicamodems/1
  # GET /caracteristicamodems/1.json
  def show
  end

  # GET /caracteristicamodems/new
  def new
    @caracteristicamodem = Caracteristicamodem.new
  end

  # GET /caracteristicamodems/1/edit
  def edit
  end

  # POST /caracteristicamodems
  # POST /caracteristicamodems.json
  def create
    @caracteristicamodem = Caracteristicamodem.new(caracteristicamodem_params)

    respond_to do |format|
      if @caracteristicamodem.save
        format.html { redirect_to @caracteristicamodem, notice: 'Caracteristicamodem was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristicamodem }
      else
        format.html { render :new }
        format.json { render json: @caracteristicamodem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristicamodems/1
  # PATCH/PUT /caracteristicamodems/1.json
  def update
    respond_to do |format|
      if @caracteristicamodem.update(caracteristicamodem_params)
        format.html { redirect_to @caracteristicamodem, notice: 'Caracteristicamodem was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristicamodem }
      else
        format.html { render :edit }
        format.json { render json: @caracteristicamodem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristicamodems/1
  # DELETE /caracteristicamodems/1.json
  def destroy
    @caracteristicamodem.destroy
    respond_to do |format|
      format.html { redirect_to caracteristicamodems_url, notice: 'Caracteristicamodem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristicamodem
      @caracteristicamodem = Caracteristicamodem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracteristicamodem_params
      params.require(:caracteristicamodem).permit(:pack, :tipo_pago, :costo)
    end
end
