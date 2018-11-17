class TipoDeQuartosController < ApplicationController
  before_action :set_tipo_de_quarto, only: [:show, :edit, :update, :destroy]

  # GET /tipo_de_quartos
  # GET /tipo_de_quartos.json
  def index
    @tipo_de_quartos = TipoDeQuarto.all
  end

  # GET /tipo_de_quartos/1
  # GET /tipo_de_quartos/1.json
  def show
  end

  # GET /tipo_de_quartos/new
  def new
    @tipo_de_quarto = TipoDeQuarto.new
  end

  # GET /tipo_de_quartos/1/edit
  def edit
  end

  # POST /tipo_de_quartos
  # POST /tipo_de_quartos.json
  def create
    @tipo_de_quarto = TipoDeQuarto.new(tipo_de_quarto_params)

    respond_to do |format|
      if @tipo_de_quarto.save
        format.html { redirect_to @tipo_de_quarto, notice: 'Tipo de quarto was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_de_quarto }
      else
        format.html { render :new }
        format.json { render json: @tipo_de_quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_quartos/1
  # PATCH/PUT /tipo_de_quartos/1.json
  def update
    respond_to do |format|
      if @tipo_de_quarto.update(tipo_de_quarto_params)
        format.html { redirect_to @tipo_de_quarto, notice: 'Tipo de quarto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_de_quarto }
      else
        format.html { render :edit }
        format.json { render json: @tipo_de_quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_quartos/1
  # DELETE /tipo_de_quartos/1.json
  def destroy
    @tipo_de_quarto.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_quartos_url, notice: 'Tipo de quarto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_quarto
      @tipo_de_quarto = TipoDeQuarto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_quarto_params
      params.require(:tipo_de_quarto).permit(:nome, :valor_diaria, :hotel_id)
    end
end
