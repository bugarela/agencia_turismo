class CasaDeShowsController < ApplicationController
  before_action :set_casa_de_show, only: [:show, :edit, :update, :destroy]

  # GET /casa_de_shows
  # GET /casa_de_shows.json
  def index
    @casa_de_shows = CasaDeShow.all
  end

  # GET /casa_de_shows/1
  # GET /casa_de_shows/1.json
  def show
  end

  # GET /casa_de_shows/new
  def new
    @casa_de_show = CasaDeShow.new
  end

  # GET /casa_de_shows/1/edit
  def edit
  end

  # POST /casa_de_shows
  # POST /casa_de_shows.json
  def create
    @casa_de_show = CasaDeShow.new(casa_de_show_params)

    respond_to do |format|
      if @casa_de_show.save
        format.html { redirect_to @casa_de_show, notice: 'Casa de show was successfully created.' }
        format.json { render :show, status: :created, location: @casa_de_show }
      else
        format.html { render :new }
        format.json { render json: @casa_de_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casa_de_shows/1
  # PATCH/PUT /casa_de_shows/1.json
  def update
    respond_to do |format|
      if @casa_de_show.update(casa_de_show_params)
        format.html { redirect_to @casa_de_show, notice: 'Casa de show was successfully updated.' }
        format.json { render :show, status: :ok, location: @casa_de_show }
      else
        format.html { render :edit }
        format.json { render json: @casa_de_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casa_de_shows/1
  # DELETE /casa_de_shows/1.json
  def destroy
    @casa_de_show.destroy
    respond_to do |format|
      format.html { redirect_to casa_de_shows_url, notice: 'Casa de show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casa_de_show
      @casa_de_show = CasaDeShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casa_de_show_params
      params.require(:casa_de_show).permit(:descricao, :hora_inicio, :dia_fechamento, :cidade_id, :endereco_id)
    end
end
