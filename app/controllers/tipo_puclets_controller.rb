class TipoPucletsController < ApplicationController
  before_action :set_tipo_puclet, only: [:show, :edit, :update, :destroy]

  # GET /tipo_puclets
  # GET /tipo_puclets.json
  def index
    @tipo_puclets = TipoPuclet.all
  end

  # GET /tipo_puclets/1
  # GET /tipo_puclets/1.json
  def show
  end

  # GET /tipo_puclets/new
  def new
    @tipo_puclet = TipoPuclet.new
  end

  # GET /tipo_puclets/1/edit
  def edit
  end

  # POST /tipo_puclets
  # POST /tipo_puclets.json
  def create
    @tipo_puclet = TipoPuclet.new(tipo_puclet_params)

    respond_to do |format|
      if @tipo_puclet.save
        format.html { redirect_to @tipo_puclet, notice: 'Tipo puclet was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_puclet }
      else
        format.html { render :new }
        format.json { render json: @tipo_puclet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_puclets/1
  # PATCH/PUT /tipo_puclets/1.json
  def update
    respond_to do |format|
      if @tipo_puclet.update(tipo_puclet_params)
        format.html { redirect_to @tipo_puclet, notice: 'Tipo puclet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_puclet }
      else
        format.html { render :edit }
        format.json { render json: @tipo_puclet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_puclets/1
  # DELETE /tipo_puclets/1.json
  def destroy
    @tipo_puclet.destroy
    respond_to do |format|
      format.html { redirect_to tipo_puclets_url, notice: 'Tipo puclet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_puclet
      @tipo_puclet = TipoPuclet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_puclet_params
      params.require(:tipo_puclet).permit(:nome)
    end
end
