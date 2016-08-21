class ModopagosController < ApplicationController
  before_action :set_modopago, only: [:show, :edit, :update, :destroy]

  # GET /modopagos
  # GET /modopagos.json
  def index
    @modopagos = Modopago.all
  end

  # GET /modopagos/1
  # GET /modopagos/1.json
  def show
  end

  # GET /modopagos/new
  def new
    @modopago = Modopago.new
  end

  # GET /modopagos/1/edit
  def edit
  end

  # POST /modopagos
  # POST /modopagos.json
  def create
    @modopago = Modopago.new(modopago_params)

    respond_to do |format|
      if @modopago.save
        format.html { redirect_to @modopago, notice: 'Modopago was successfully created.' }
        format.json { render :show, status: :created, location: @modopago }
      else
        format.html { render :new }
        format.json { render json: @modopago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modopagos/1
  # PATCH/PUT /modopagos/1.json
  def update
    respond_to do |format|
      if @modopago.update(modopago_params)
        format.html { redirect_to @modopago, notice: 'Modopago was successfully updated.' }
        format.json { render :show, status: :ok, location: @modopago }
      else
        format.html { render :edit }
        format.json { render json: @modopago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modopagos/1
  # DELETE /modopagos/1.json
  def destroy
    @modopago.destroy
    respond_to do |format|
      format.html { redirect_to modopagos_url, notice: 'Modopago was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modopago
      @modopago = Modopago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modopago_params
      params.require(:modopago).permit(:modo_pago, :descripcion)
    end
end
