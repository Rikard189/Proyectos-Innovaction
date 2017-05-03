class EstudiantesController < ApplicationController
  before_action :set_proyecto
  before_action :set_estudiante, only: [:show, :edit, :update, :destroy]

  # GET /estudiantes
  # GET /estudiantes.json
  def index
    @estudiantes = Estudiante.all
  end

  # GET /estudiantes/1
  # GET /estudiantes/1.json
  def show

  end

  # GET /estudiantes/new
  def new
    @proyecto = Proyecto.find(params[:proyecto_id])
    @estudiante = @proyecto.estudiantes.new
  end

  # GET /estudiantes/1/edit
  def edit
  end

  # POST /estudiantes
  # POST /estudiantes.json
  def create
    @estudiante = Estudiante.new(estudiante_params)
    @estudiante.proyecto = @proyecto

    if @estudiante.save
      redirect_to [@proyecto,@estudiante], notice: 'Estudiante was successfully created.'
    else
      render 'new'
    end

  end

  # PATCH/PUT /estudiantes/1
  # PATCH/PUT /estudiantes/1.json
  def update
    respond_to do |format|
      if @estudiante.update(estudiante_params)
        format.html { redirect_to @estudiante, notice: 'Estudiante was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudiante }
      else
        format.html { render :edit }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudiantes/1
  # DELETE /estudiantes/1.json
  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy
    redirect_to proyecto_estudiantes_path

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudiante
      @estudiante = Estudiante.find(params[:id])
    end

    def set_proyecto
      @proyecto = Proyecto.find(params[:proyecto_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudiante_params
      params.require(:estudiante).permit(:nombre, :apellido, :matricula, :carrera, :email, :proyecto_id)
    end
end
