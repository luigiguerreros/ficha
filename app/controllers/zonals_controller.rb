class ZonalsController < ApplicationController
  before_action :set_zonal, only: [:show, :edit, :update, :destroy]

  # GET /zonals
  # GET /zonals.json
  def index
    @zonals = Zonal.all
  end

  # GET /zonals/1
  # GET /zonals/1.json
  def show
  end

  # GET /zonals/new
  def new
    @zonal = Zonal.new
  end

  # GET /zonals/1/edit
  def edit
  end

  # POST /zonals
  # POST /zonals.json
  def create
    @zonal = Zonal.new(zonal_params)

    respond_to do |format|
      if @zonal.save
        format.html { redirect_to @zonal, notice: 'Zonal was successfully created.' }
        format.json { render :show, status: :created, location: @zonal }
      else
        format.html { render :new }
        format.json { render json: @zonal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zonals/1
  # PATCH/PUT /zonals/1.json
  def update
    respond_to do |format|
      if @zonal.update(zonal_params)
        format.html { redirect_to @zonal, notice: 'Zonal was successfully updated.' }
        format.json { render :show, status: :ok, location: @zonal }
      else
        format.html { render :edit }
        format.json { render json: @zonal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zonals/1
  # DELETE /zonals/1.json
  def destroy
    @zonal.destroy
    respond_to do |format|
      format.html { redirect_to zonals_url, notice: 'Zonal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zonal
      @zonal = Zonal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zonal_params
      params.require(:zonal).permit(:nombre_zona, :descripcion)
    end
end
