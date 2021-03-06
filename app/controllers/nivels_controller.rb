class NivelsController < ApplicationController
  before_action :set_nivel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /nivels
  # GET /nivels.json
  def index
    @nivels = Nivel.all
  end

  # GET /nivels/1
  # GET /nivels/1.json
  def show
  end

  # GET /nivels/new
  def new
    @nivel = Nivel.new
  end

  # GET /nivels/1/edit
  def edit
  end

  # POST /nivels
  # POST /nivels.json
  def create
    @nivel = Nivel.new(nivel_params)

    respond_to do |format|
      if @nivel.save
        format.html { redirect_to @nivel, notice: 'Nivel was successfully created.' }
        format.json { render :show, status: :created, location: @nivel }
      else
        format.html { render :new }
        format.json { render json: @nivel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nivels/1
  # PATCH/PUT /nivels/1.json
  def update
    respond_to do |format|
      if @nivel.update(nivel_params)
        format.html { redirect_to @nivel, notice: 'Nivel was successfully updated.' }
        format.json { render :show, status: :ok, location: @nivel }
      else
        format.html { render :edit }
        format.json { render json: @nivel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivels/1
  # DELETE /nivels/1.json
  def destroy
    @nivel.destroy
    respond_to do |format|
      format.html { redirect_to nivels_url, notice: 'Nivel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivel
      @nivel = Nivel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nivel_params
      params.require(:nivel).permit(:posicao, :descricao)
    end
end
