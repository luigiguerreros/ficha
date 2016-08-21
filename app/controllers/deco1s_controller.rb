class Deco1sController < ApplicationController
  before_action :set_deco1, only: [:show, :edit, :update, :destroy]

  # GET /deco1s
  # GET /deco1s.json
  def index
    @deco1s = Deco1.all
  end

  # GET /deco1s/1
  # GET /deco1s/1.json
  def show
  end

  # GET /deco1s/new
  def new
    @deco1 = Deco1.new
  end

  # GET /deco1s/1/edit
  def edit
  end

  # POST /deco1s
  # POST /deco1s.json
  def create
    @deco1 = Deco1.new(deco1_params)

    respond_to do |format|
      if @deco1.save
        format.html { redirect_to @deco1, notice: 'Deco1 was successfully created.' }
        format.json { render :show, status: :created, location: @deco1 }
      else
        format.html { render :new }
        format.json { render json: @deco1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deco1s/1
  # PATCH/PUT /deco1s/1.json
  def update
    respond_to do |format|
      if @deco1.update(deco1_params)
        format.html { redirect_to @deco1, notice: 'Deco1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @deco1 }
      else
        format.html { render :edit }
        format.json { render json: @deco1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deco1s/1
  # DELETE /deco1s/1.json
  def destroy
    @deco1.destroy
    respond_to do |format|
      format.html { redirect_to deco1s_url, notice: 'Deco1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deco1
      @deco1 = Deco1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deco1_params
      params.require(:deco1).permit(:tipo, :ps, :oc)
    end
end
