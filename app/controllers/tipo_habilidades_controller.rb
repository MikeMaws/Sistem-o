class TipoHabilidadesController < ApplicationController
  before_action :set_tipo_habilidade, only: [:show, :edit, :update, :destroy]

  # GET /tipo_habilidades
  # GET /tipo_habilidades.json
  def index
    @tipo_habilidades = TipoHabilidade.all
  end

  # GET /tipo_habilidades/1
  # GET /tipo_habilidades/1.json
  def show
  end

  # GET /tipo_habilidades/new
  def new
    @tipo_habilidade = TipoHabilidade.new
  end

  # GET /tipo_habilidades/1/edit
  def edit
  end

  # POST /tipo_habilidades
  # POST /tipo_habilidades.json
  def create
    @tipo_habilidade = TipoHabilidade.new(tipo_habilidade_params)

    respond_to do |format|
      if @tipo_habilidade.save
        format.html { redirect_to @tipo_habilidade, notice: 'Tipo habilidade was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_habilidade }
      else
        format.html { render :new }
        format.json { render json: @tipo_habilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_habilidades/1
  # PATCH/PUT /tipo_habilidades/1.json
  def update
    respond_to do |format|
      if @tipo_habilidade.update(tipo_habilidade_params)
        format.html { redirect_to @tipo_habilidade, notice: 'Tipo habilidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_habilidade }
      else
        format.html { render :edit }
        format.json { render json: @tipo_habilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_habilidades/1
  # DELETE /tipo_habilidades/1.json
  def destroy
    @tipo_habilidade.destroy
    respond_to do |format|
      format.html { redirect_to tipo_habilidades_url, notice: 'Tipo habilidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_habilidade
      @tipo_habilidade = TipoHabilidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_habilidade_params
      params.require(:tipo_habilidade).permit(:nome)
    end
end
