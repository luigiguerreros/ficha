class Caracteristicadeco1sController < ApplicationController
  before_action :set_caracteristicadeco1, only: [:show, :edit, :update, :destroy]

  # GET /caracteristicadeco1s
  # GET /caracteristicadeco1s.json
  def index
    @caracteristicadeco1s = Caracteristicadeco1.all
  end

  # GET /caracteristicadeco1s/1
  # GET /caracteristicadeco1s/1.json
  def show
  end

  # GET /caracteristicadeco1s/new
  def new
    @caracteristicadeco1 = Caracteristicadeco1.new
  end

  # GET /caracteristicadeco1s/1/edit
  def edit
  end

  # POST /caracteristicadeco1s
  # POST /caracteristicadeco1s.json
  def create
    @caracteristicadeco1 = Caracteristicadeco1.new(caracteristicadeco1_params)

    respond_to do |format|
      if @caracteristicadeco1.save
        format.html { redirect_to @caracteristicadeco1, notice: 'Caracteristicadeco1 was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristicadeco1 }
      else
        format.html { render :new }
        format.json { render json: @caracteristicadeco1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristicadeco1s/1
  # PATCH/PUT /caracteristicadeco1s/1.json
  def update
    respond_to do |format|
      if @caracteristicadeco1.update(caracteristicadeco1_params)
        format.html { redirect_to @caracteristicadeco1, notice: 'Caracteristicadeco1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristicadeco1 }
      else
        format.html { render :edit }
        format.json { render json: @caracteristicadeco1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristicadeco1s/1
  # DELETE /caracteristicadeco1s/1.json
  def destroy
    @caracteristicadeco1.destroy
    respond_to do |format|
      format.html { redirect_to caracteristicadeco1s_url, notice: 'Caracteristicadeco1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristicadeco1
      @caracteristicadeco1 = Caracteristicadeco1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracteristicadeco1_params
      params.require(:caracteristicadeco1).permit(:pack, :tipo_pago, :costo)
    end
end
