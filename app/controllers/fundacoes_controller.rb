class FundacoesController < ApplicationController
  before_action :set_fundacao, only: [:show, :edit, :update, :destroy]

  # GET /fundacoes
  # GET /fundacoes.json
  def index
    @fundacoes = Fundacao.all
  end

  # GET /fundacoes/1
  # GET /fundacoes/1.json
  def show
  end

  # GET /fundacoes/new
  def new
    @fundacao = Fundacao.new
  end

  # GET /fundacoes/1/edit
  def edit
  end

  # POST /fundacoes
  # POST /fundacoes.json
  def create
    @fundacao = Fundacao.new(fundacao_params)

    respond_to do |format|
      if @fundacao.save
        format.html { redirect_to @fundacao, notice: 'Fundacao was successfully created.' }
        format.json { render :show, status: :created, location: @fundacao }
      else
        format.html { render :new }
        format.json { render json: @fundacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundacoes/1
  # PATCH/PUT /fundacoes/1.json
  def update
    respond_to do |format|
      if @fundacao.update(fundacao_params)
        format.html { redirect_to @fundacao, notice: 'Fundacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @fundacao }
      else
        format.html { render :edit }
        format.json { render json: @fundacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundacoes/1
  # DELETE /fundacoes/1.json
  def destroy
    @fundacao.destroy
    respond_to do |format|
      format.html { redirect_to fundacoes_url, notice: 'Fundacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundacao
      @fundacao = Fundacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fundacao_params
      params.require(:fundacao).permit(:museu_id, :fundador_id)
    end
end
