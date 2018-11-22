class PacotesController < ApplicationController
  before_action :set_pacote, only: [:show, :edit, :update, :destroy]

  # GET /pacotes
  # GET /pacotes.json
  def index
    @pacotes = Pacote.all
  end

  # GET /pacotes/1
  # GET /pacotes/1.json
  def show
  end

  # GET /pacotes/new
  def new
    @pacote = Pacote.new
  end

  # GET /pacotes/1/edit
  def edit
  end

  # POST /pacotes
  # POST /pacotes.json
  def create
    @pacote = Pacote.new(pacote_params)

    respond_to do |format|
      if @pacote.save
        format.html { redirect_to edit_pacote_path(@pacote), notice: 'Pacote was successfully created.' }
        format.json { render :show, status: :created, location: @pacote }
      else
        format.html { render :new }
        format.json { render json: @pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacotes/1
  # PATCH/PUT /pacotes/1.json
  def update
    respond_to do |format|
      if @pacote.update(pacote_params)
        format.html { redirect_to edit_pacote_path(@pacote), notice: 'Pacote was successfully updated.' }
        format.json { render :show, status: :ok, location: @pacote }
      else
        format.html { render :edit }
        format.json { render json: @pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacotes/1
  # DELETE /pacotes/1.json
  def destroy
    @pacote.destroy
    respond_to do |format|
      format.html { redirect_to pacotes_url, notice: 'Pacote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacote
      @pacote = Pacote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pacote_params
      params.require(:pacote).permit(:valor, :data_inicio, :data_fim, :cidade_id, igreja_ids:[], parque_ids:[])
    end
end
