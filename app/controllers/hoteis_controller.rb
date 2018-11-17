class HoteisController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  # GET /hoteis
  # GET /hoteis.json
  def index
    @hoteis = Hotel.all
  end

  # GET /hoteis/1
  # GET /hoteis/1.json
  def show
  end

  # GET /hoteis/new
  def new
    @hotel = Hotel.new
  end

  # GET /hoteis/1/edit
  def edit
  end

  # POST /hoteis
  # POST /hoteis.json
  def create
    @hotel = Hotel.new(hotel_params)

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to @hotel, notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoteis/1
  # PATCH/PUT /hoteis/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to @hotel, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoteis/1
  # DELETE /hoteis/1.json
  def destroy
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to hoteis_url, notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_params
      params.require(:hotel).permit(:nome, :categoria, :endereco_id, :cidade_id)
    end
end
