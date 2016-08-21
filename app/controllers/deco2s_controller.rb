class Deco2sController < ApplicationController
  before_action :set_deco2, only: [:show, :edit, :update, :destroy]

  # GET /deco2s
  # GET /deco2s.json
  def index
    @deco2s = Deco2.all
  end

  # GET /deco2s/1
  # GET /deco2s/1.json
  def show
  end

  # GET /deco2s/new
  def new
    @deco2 = Deco2.new
  end

  # GET /deco2s/1/edit
  def edit
  end

  # POST /deco2s
  # POST /deco2s.json
  def create
    @deco2 = Deco2.new(deco2_params)

    respond_to do |format|
      if @deco2.save
        format.html { redirect_to @deco2, notice: 'Deco2 was successfully created.' }
        format.json { render :show, status: :created, location: @deco2 }
      else
        format.html { render :new }
        format.json { render json: @deco2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deco2s/1
  # PATCH/PUT /deco2s/1.json
  def update
    respond_to do |format|
      if @deco2.update(deco2_params)
        format.html { redirect_to @deco2, notice: 'Deco2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @deco2 }
      else
        format.html { render :edit }
        format.json { render json: @deco2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deco2s/1
  # DELETE /deco2s/1.json
  def destroy
    @deco2.destroy
    respond_to do |format|
      format.html { redirect_to deco2s_url, notice: 'Deco2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deco2
      @deco2 = Deco2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deco2_params
      params.require(:deco2).permit(:tipo, :ps, :oc)
    end
end
