class AntenapuntosController < ApplicationController
  before_action :set_antenapunto, only: [:show, :edit, :update, :destroy]

  # GET /antenapuntos
  # GET /antenapuntos.json
  def index
    @antenapuntos = Antenapunto.all
  end

  # GET /antenapuntos/1
  # GET /antenapuntos/1.json
  def show
  end

  # GET /antenapuntos/new
  def new
    @antenapunto = Antenapunto.new
  end

  # GET /antenapuntos/1/edit
  def edit
  end

  # POST /antenapuntos
  # POST /antenapuntos.json
  def create
    @antenapunto = Antenapunto.new(antenapunto_params)

    respond_to do |format|
      if @antenapunto.save
        format.html { redirect_to @antenapunto, notice: 'Antenapunto was successfully created.' }
        format.json { render :show, status: :created, location: @antenapunto }
      else
        format.html { render :new }
        format.json { render json: @antenapunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /antenapuntos/1
  # PATCH/PUT /antenapuntos/1.json
  def update
    respond_to do |format|
      if @antenapunto.update(antenapunto_params)
        format.html { redirect_to @antenapunto, notice: 'Antenapunto was successfully updated.' }
        format.json { render :show, status: :ok, location: @antenapunto }
      else
        format.html { render :edit }
        format.json { render json: @antenapunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /antenapuntos/1
  # DELETE /antenapuntos/1.json
  def destroy
    @antenapunto.destroy
    respond_to do |format|
      format.html { redirect_to antenapuntos_url, notice: 'Antenapunto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_antenapunto
      @antenapunto = Antenapunto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def antenapunto_params
      params.require(:antenapunto).permit(:tipo, :nombre, :ps, :oc)
    end
end
