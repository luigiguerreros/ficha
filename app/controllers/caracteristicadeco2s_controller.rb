class Caracteristicadeco2sController < ApplicationController
  before_action :set_caracteristicadeco2, only: [:show, :edit, :update, :destroy]

  # GET /caracteristicadeco2s
  # GET /caracteristicadeco2s.json
  def index
    @caracteristicadeco2s = Caracteristicadeco2.all
  end

  # GET /caracteristicadeco2s/1
  # GET /caracteristicadeco2s/1.json
  def show
  end

  # GET /caracteristicadeco2s/new
  def new
    @caracteristicadeco2 = Caracteristicadeco2.new
  end

  # GET /caracteristicadeco2s/1/edit
  def edit
  end

  # POST /caracteristicadeco2s
  # POST /caracteristicadeco2s.json
  def create
    @caracteristicadeco2 = Caracteristicadeco2.new(caracteristicadeco2_params)

    respond_to do |format|
      if @caracteristicadeco2.save
        format.html { redirect_to @caracteristicadeco2, notice: 'Caracteristicadeco2 was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristicadeco2 }
      else
        format.html { render :new }
        format.json { render json: @caracteristicadeco2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristicadeco2s/1
  # PATCH/PUT /caracteristicadeco2s/1.json
  def update
    respond_to do |format|
      if @caracteristicadeco2.update(caracteristicadeco2_params)
        format.html { redirect_to @caracteristicadeco2, notice: 'Caracteristicadeco2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristicadeco2 }
      else
        format.html { render :edit }
        format.json { render json: @caracteristicadeco2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristicadeco2s/1
  # DELETE /caracteristicadeco2s/1.json
  def destroy
    @caracteristicadeco2.destroy
    respond_to do |format|
      format.html { redirect_to caracteristicadeco2s_url, notice: 'Caracteristicadeco2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristicadeco2
      @caracteristicadeco2 = Caracteristicadeco2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracteristicadeco2_params
      params.require(:caracteristicadeco2).permit(:pack, :tipo_pago, :costo)
    end
end
