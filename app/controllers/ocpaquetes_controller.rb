class OcpaquetesController < ApplicationController
  before_action :set_ocpaquete, only: [:show, :edit, :update, :destroy]

  # GET /ocpaquetes
  # GET /ocpaquetes.json
  def index
    @ocpaquetes = Ocpaquete.all
  end

  # GET /ocpaquetes/1
  # GET /ocpaquetes/1.json
  def show
  end

  # GET /ocpaquetes/new
  def new
    @ocpaquete = Ocpaquete.new
  end

  # GET /ocpaquetes/1/edit
  def edit
  end

  # POST /ocpaquetes
  # POST /ocpaquetes.json
  def create
    @ocpaquete = Ocpaquete.new(ocpaquete_params)

    respond_to do |format|
      if @ocpaquete.save
        format.html { redirect_to @ocpaquete, notice: 'Ocpaquete was successfully created.' }
        format.json { render :show, status: :created, location: @ocpaquete }
      else
        format.html { render :new }
        format.json { render json: @ocpaquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ocpaquetes/1
  # PATCH/PUT /ocpaquetes/1.json
  def update
    respond_to do |format|
      if @ocpaquete.update(ocpaquete_params)
        format.html { redirect_to @ocpaquete, notice: 'Ocpaquete was successfully updated.' }
        format.json { render :show, status: :ok, location: @ocpaquete }
      else
        format.html { render :edit }
        format.json { render json: @ocpaquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocpaquetes/1
  # DELETE /ocpaquetes/1.json
  def destroy
    @ocpaquete.destroy
    respond_to do |format|
      format.html { redirect_to ocpaquetes_url, notice: 'Ocpaquete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocpaquete
      @ocpaquete = Ocpaquete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ocpaquete_params
      params.require(:ocpaquete).permit(:tipo_ocpaquete, :descripcion)
    end
end
