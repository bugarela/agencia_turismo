class MuseusController < ApplicationController
  before_action :set_museu, only: [:show, :edit, :update, :destroy]

  # GET /museus
  # GET /museus.json
  def index
    @museus = Museu.all
  end

  # GET /museus/1
  # GET /museus/1.json
  def show
  end

  # GET /museus/new
  def new
    @museu = Museu.new
  end

  # GET /museus/1/edit
  def edit
  end

  # POST /museus
  # POST /museus.json
  def create
    @museu = Museu.new(museu_params)

    respond_to do |format|
      if @museu.save
        format.html { redirect_to @museu, notice: 'Museu was successfully created.' }
        format.json { render :show, status: :created, location: @museu }
      else
        format.html { render :new }
        format.json { render json: @museu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /museus/1
  # PATCH/PUT /museus/1.json
  def update
    respond_to do |format|
      if @museu.update(museu_params)
        format.html { redirect_to @museu, notice: 'Museu was successfully updated.' }
        format.json { render :show, status: :ok, location: @museu }
      else
        format.html { render :edit }
        format.json { render json: @museu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /museus/1
  # DELETE /museus/1.json
  def destroy
    @museu.destroy
    respond_to do |format|
      format.html { redirect_to museus_url, notice: 'Museu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_museu
      @museu = Museu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def museu_params
      params.require(:museu).permit(:descricao, :data_fundacao, :n_salas, :cidade_id, :endereco_id)
    end
end
