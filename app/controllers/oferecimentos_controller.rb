class OferecimentosController < ApplicationController
  before_action :set_oferecimento, only: [:show, :edit, :update, :destroy]

  # GET /oferecimentos
  # GET /oferecimentos.json
  def index
    @oferecimentos = Oferecimento.all
  end

  # GET /oferecimentos/1
  # GET /oferecimentos/1.json
  def show
  end

  # GET /oferecimentos/new
  def new
    @oferecimento = Oferecimento.new
  end

  # GET /oferecimentos/1/edit
  def edit
  end

  # POST /oferecimentos
  # POST /oferecimentos.json
  def create
    @oferecimento = Oferecimento.new(oferecimento_params)

    respond_to do |format|
      if @oferecimento.save
        format.html { redirect_to @oferecimento, notice: 'Oferecimento was successfully created.' }
        format.json { render :show, status: :created, location: @oferecimento }
      else
        format.html { render :new }
        format.json { render json: @oferecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oferecimentos/1
  # PATCH/PUT /oferecimentos/1.json
  def update
    respond_to do |format|
      if @oferecimento.update(oferecimento_params)
        format.html { redirect_to @oferecimento, notice: 'Oferecimento was successfully updated.' }
        format.json { render :show, status: :ok, location: @oferecimento }
      else
        format.html { render :edit }
        format.json { render json: @oferecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferecimentos/1
  # DELETE /oferecimentos/1.json
  def destroy
    @oferecimento.destroy
    respond_to do |format|
      format.html { redirect_to oferecimentos_url, notice: 'Oferecimento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oferecimento
      @oferecimento = Oferecimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oferecimento_params
      params.require(:oferecimento).permit(:pacote_id, :atracao_id)
    end
end
