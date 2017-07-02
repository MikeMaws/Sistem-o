class MaterialDidaticosController < ApplicationController
  before_action :set_material_didatico, only: [:show, :edit, :update, :destroy]

  # GET /material_didaticos
  # GET /material_didaticos.json
  def index
    @material_didaticos = MaterialDidatico.all
  end

  # GET /material_didaticos/1
  # GET /material_didaticos/1.json
  def show
  end

  # GET /material_didaticos/new
  def new
    @material_didatico = MaterialDidatico.new
  end

  # GET /material_didaticos/1/edit
  def edit
  end

  # POST /material_didaticos
  # POST /material_didaticos.json
  def create
    @material_didatico = MaterialDidatico.new(material_didatico_params)

    respond_to do |format|
      if @material_didatico.save
        format.html { redirect_to @material_didatico, notice: 'Material didatico was successfully created.' }
        format.json { render :show, status: :created, location: @material_didatico }
      else
        format.html { render :new }
        format.json { render json: @material_didatico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_didaticos/1
  # PATCH/PUT /material_didaticos/1.json
  def update
    respond_to do |format|
      if @material_didatico.update(material_didatico_params)
        format.html { redirect_to @material_didatico, notice: 'Material didatico was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_didatico }
      else
        format.html { render :edit }
        format.json { render json: @material_didatico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_didaticos/1
  # DELETE /material_didaticos/1.json
  def destroy
    @material_didatico.destroy
    respond_to do |format|
      format.html { redirect_to material_didaticos_url, notice: 'Material didatico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_didatico
      @material_didatico = MaterialDidatico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_didatico_params
      params.require(:material_didatico).permit(:titulo, :url)
    end
end
