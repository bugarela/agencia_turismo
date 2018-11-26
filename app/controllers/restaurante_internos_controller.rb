class RestauranteInternosController < ApplicationController
  before_action :set_restaurante_interno, only: [:show, :edit, :update, :destroy]

  # GET /restaurante_internos
  # GET /restaurante_internos.json
  def index
    @restaurante_internos = RestauranteInterno.all
  end

  # GET /restaurante_internos/1
  # GET /restaurante_internos/1.json
  def show
  end

  # GET /restaurante_internos/new
  def new
    @restaurante_interno = RestauranteInterno.new
  end

  # GET /restaurante_internos/1/edit
  def edit
  end

  # POST /restaurante_internos
  # POST /restaurante_internos.json
  def create
    @restaurante_interno = RestauranteInterno.new(restaurante_interno_params)

    respond_to do |format|
      if @restaurante_interno.save
        format.html { redirect_to @restaurante_interno, notice: 'Restaurante interno was successfully created.' }
        format.json { render :show, status: :created, location: @restaurante_interno }
      else
        format.html { render :new }
        format.json { render json: @restaurante_interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurante_internos/1
  # PATCH/PUT /restaurante_internos/1.json
  def update
    respond_to do |format|
      if @restaurante_interno.update(restaurante_interno_params)
        format.html { redirect_to @restaurante_interno, notice: 'Restaurante interno was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurante_interno }
      else
        format.html { render :edit }
        format.json { render json: @restaurante_interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurante_internos/1
  # DELETE /restaurante_internos/1.json
  def destroy
    @restaurante_interno.destroy
    respond_to do |format|
      format.html { redirect_to restaurante_internos_url, notice: 'Restaurante interno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurante_interno
      @restaurante_interno = RestauranteInterno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurante_interno_params
      params.require(:restaurante_interno).permit(:preco_medio, :especialidade, :casa_de_show_id)
    end
end
