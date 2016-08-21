class TecnosController < ApplicationController
  before_action :set_tecno, only: [:show, :edit, :update, :destroy]

  # GET /tecnos
  # GET /tecnos.json
  def index
    @tecnos = Tecno.all
  end

  # GET /tecnos/1
  # GET /tecnos/1.json
  def show
  end

  # GET /tecnos/new
  def new
    @tecno = Tecno.new
  end

  # GET /tecnos/1/edit
  def edit
  end

  # POST /tecnos
  # POST /tecnos.json
  def create
    @tecno = Tecno.new(tecno_params)

    respond_to do |format|
      if @tecno.save
        format.html { redirect_to @tecno, notice: 'Tecno was successfully created.' }
        format.json { render :show, status: :created, location: @tecno }
      else
        format.html { render :new }
        format.json { render json: @tecno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnos/1
  # PATCH/PUT /tecnos/1.json
  def update
    respond_to do |format|
      if @tecno.update(tecno_params)
        format.html { redirect_to @tecno, notice: 'Tecno was successfully updated.' }
        format.json { render :show, status: :ok, location: @tecno }
      else
        format.html { render :edit }
        format.json { render json: @tecno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnos/1
  # DELETE /tecnos/1.json
  def destroy
    @tecno.destroy
    respond_to do |format|
      format.html { redirect_to tecnos_url, notice: 'Tecno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecno
      @tecno = Tecno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tecno_params
      params.require(:tecno).permit(:tipo_tecnologia, :descripcion)
    end
end
