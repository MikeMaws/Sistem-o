class AvaliarsController < ApplicationController
  before_action :set_avaliar, only: [:show, :edit, :update, :destroy]

  # GET /avaliars
  # GET /avaliars.json
  def index
    @avaliars = Avaliar.all
  end

  # GET /avaliars/1
  # GET /avaliars/1.json
  def show
  end

  # GET /avaliars/new
  def new
    @avaliar = Avaliar.new
  end

  # GET /avaliars/1/edit
  def edit
  end

  # POST /avaliars
  # POST /avaliars.json
  def create
    @avaliar = Avaliar.new(avaliar_params)

    respond_to do |format|
      if @avaliar.save
        format.html { redirect_to @avaliar, notice: 'Avaliar was successfully created.' }
        format.json { render :show, status: :created, location: @avaliar }
      else
        format.html { render :new }
        format.json { render json: @avaliar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliars/1
  # PATCH/PUT /avaliars/1.json
  def update
    respond_to do |format|
      if @avaliar.update(avaliar_params)
        format.html { redirect_to @avaliar, notice: 'Avaliar was successfully updated.' }
        format.json { render :show, status: :ok, location: @avaliar }
      else
        format.html { render :edit }
        format.json { render json: @avaliar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliars/1
  # DELETE /avaliars/1.json
  def destroy
    @avaliar.destroy
    respond_to do |format|
      format.html { redirect_to avaliars_url, notice: 'Avaliar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliar
      @avaliar = Avaliar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avaliar_params
      params.require(:avaliar).permit(:nota, :comunicacao, :colaboracao, :construcao, :pcritico, :compromisso, :criatividade, :user_id)
    end
end
