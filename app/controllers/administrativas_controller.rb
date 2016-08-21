class AdministrativasController < ApplicationController
  before_action :set_administrativa, only: [:show, :edit, :update, :destroy]

  # GET /administrativas
  # GET /administrativas.json
  def index
    @administrativas = Administrativa.all
  end

  # GET /administrativas/1
  # GET /administrativas/1.json
  def show
  end

  # GET /administrativas/new
  def new
    @administrativa = Administrativa.new
  end

  # GET /administrativas/1/edit
  def edit
  end

  # POST /administrativas
  # POST /administrativas.json
  def create
    @administrativa = Administrativa.new(administrativa_params)

    respond_to do |format|
      if @administrativa.save
        format.html { redirect_to @administrativa, notice: 'Administrativa was successfully created.' }
        format.json { render :show, status: :created, location: @administrativa }
      else
        format.html { render :new }
        format.json { render json: @administrativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrativas/1
  # PATCH/PUT /administrativas/1.json
  def update
    respond_to do |format|
      if @administrativa.update(administrativa_params)
        format.html { redirect_to @administrativa, notice: 'Administrativa was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrativa }
      else
        format.html { render :edit }
        format.json { render json: @administrativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrativas/1
  # DELETE /administrativas/1.json
  def destroy
    @administrativa.destroy
    respond_to do |format|
      format.html { redirect_to administrativas_url, notice: 'Administrativa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrativa
      @administrativa = Administrativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrativa_params
      params.require(:administrativa).permit(:ps_administrativa, :velocidad)
    end
end
