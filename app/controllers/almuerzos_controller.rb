class AlmuerzosController < ApplicationController
  before_action :set_almuerzo, only: [:show, :edit, :update, :destroy, :comprar]
  # filtrando contenido al usario
  before_filter :authenticate_user!, except:[ :index ]

  # GET /almuerzos
  # GET /almuerzos.json
  def index
    @almuerzos = Almuerzo.all
  end

  # GET /almuerzos/1
  # GET /almuerzos/1.json
  def show
  end

  #comprar almuerzo
   

  # GET /almuerzos/new
  def new
    @almuerzo = Almuerzo.new
  end

  # GET /almuerzos/1/edit
  def edit
  end

  # POST /almuerzos
  # POST /almuerzos.json
  def create
    @almuerzo = Almuerzo.new(almuerzo_params)

    respond_to do |format|
      if @almuerzo.save
        format.html { redirect_to @almuerzo, notice: 'Almuerzo creado con exito.' }
        format.json { render :show, status: :created, location: @almuerzo }
      else
        format.html { render :new }
        format.json { render json: @almuerzo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /almuerzos/1
  # PATCH/PUT /almuerzos/1.json
  def update
    respond_to do |format|
      if @almuerzo.update(almuerzo_params)
        format.html { redirect_to @almuerzo, notice: 'Almuerzo actualizado con exito.' }
        format.json { render :show, status: :ok, location: @almuerzo }
      else
        format.html { render :edit }
        format.json { render json: @almuerzo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /almuerzos/1
  # DELETE /almuerzos/1.json
  def destroy
    @almuerzo.destroy
    respond_to do |format|
      format.html { redirect_to almuerzos_url, notice: 'Almuerzo eliminado con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_almuerzo
      @almuerzo = Almuerzo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def almuerzo_params
      params.require(:almuerzo).permit(:foto, :nombre, :descripcion, :precio, :stock)
    end
end
