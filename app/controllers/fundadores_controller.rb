class FundadoresController < ApplicationController
  before_action :set_fundador, only: [:show, :edit, :update, :destroy]

  # GET /fundadores
  # GET /fundadores.json
  def index
    @fundadores = Fundador.all
  end

  # GET /fundadores/1
  # GET /fundadores/1.json
  def show
  end

  # GET /fundadores/new
  def new
    @fundador = Fundador.new
  end

  # GET /fundadores/1/edit
  def edit
  end

  # POST /fundadores
  # POST /fundadores.json
  def create
    @fundador = Fundador.new(fundador_params)

    respond_to do |format|
      if @fundador.save
        format.html { redirect_to @fundador, notice: 'Fundador was successfully created.' }
        format.json { render :show, status: :created, location: @fundador }
      else
        format.html { render :new }
        format.json { render json: @fundador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundadores/1
  # PATCH/PUT /fundadores/1.json
  def update
    respond_to do |format|
      if @fundador.update(fundador_params)
        format.html { redirect_to @fundador, notice: 'Fundador was successfully updated.' }
        format.json { render :show, status: :ok, location: @fundador }
      else
        format.html { render :edit }
        format.json { render json: @fundador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundadores/1
  # DELETE /fundadores/1.json
  def destroy
    @fundador.destroy
    respond_to do |format|
      format.html { redirect_to fundadores_url, notice: 'Fundador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundador
      @fundador = Fundador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fundador_params
      params.require(:fundador).permit(:data_nasc, :data_morte, :nome, :nacionalidade, :atividade)
    end
end
