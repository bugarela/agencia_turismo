class ParquesController < ApplicationController
  before_action :set_parque, only: [:show, :edit, :update, :destroy]

  # GET /parques
  # GET /parques.json
  def index
    @parques = Parque.all
  end

  # GET /parques/1
  # GET /parques/1.json
  def show
  end

  # GET /parques/new
  def new
    @parque = Parque.new
  end

  # GET /parques/1/edit
  def edit
  end

  # POST /parques
  # POST /parques.json
  def create
    @parque = Parque.new(parque_params)

    respond_to do |format|
      if @parque.save
        format.html { redirect_to @parque, notice: 'Parque was successfully created.' }
        format.json { render :show, status: :created, location: @parque }
      else
        format.html { render :new }
        format.json { render json: @parque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parques/1
  # PATCH/PUT /parques/1.json
  def update
    respond_to do |format|
      if @parque.update(parque_params)
        format.html { redirect_to @parque, notice: 'Parque was successfully updated.' }
        format.json { render :show, status: :ok, location: @parque }
      else
        format.html { render :edit }
        format.json { render json: @parque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parques/1
  # DELETE /parques/1.json
  def destroy
    @parque.destroy
    respond_to do |format|
      format.html { redirect_to parques_url, notice: 'Parque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parque
      @parque = Parque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parque_params
      params.require(:parque).permit(:descricao, :endereco_id, :cidade_id)
    end
end
