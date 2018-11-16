class AtracoesController < ApplicationController
  before_action :set_atracao, only: [:show, :edit, :update, :destroy]

  # GET /atracoes
  # GET /atracoes.json
  def index
    @atracoes = Atracao.all
  end

  # GET /atracoes/1
  # GET /atracoes/1.json
  def show
  end

  # GET /atracoes/new
  def new
    @atracao = Atracao.new
  end

  # GET /atracoes/1/edit
  def edit
  end

  # POST /atracoes
  # POST /atracoes.json
  def create
    @atracao = Atracao.new(atracao_params)

    respond_to do |format|
      if @atracao.save
        format.html { redirect_to @atracao, notice: 'Atracao was successfully created.' }
        format.json { render :show, status: :created, location: @atracao }
      else
        format.html { render :new }
        format.json { render json: @atracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atracoes/1
  # PATCH/PUT /atracoes/1.json
  def update
    respond_to do |format|
      if @atracao.update(atracao_params)
        format.html { redirect_to @atracao, notice: 'Atracao was successfully updated.' }
        format.json { render :show, status: :ok, location: @atracao }
      else
        format.html { render :edit }
        format.json { render json: @atracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atracoes/1
  # DELETE /atracoes/1.json
  def destroy
    @atracao.destroy
    respond_to do |format|
      format.html { redirect_to atracoes_url, notice: 'Atracao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atracao
      @atracao = Atracao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atracao_params
      params.require(:atracao).permit(:descricao, :endereco_id, :dia_visita, :turistico_id, :turistico_type)
    end
end
