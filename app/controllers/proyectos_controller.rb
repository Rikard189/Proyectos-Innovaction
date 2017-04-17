class ProyectosController < ApplicationController
  def new
  end

  def create
    @proyecto = Proyecto.new(proyecto_params)
    @proyecto.save
  end

  private
    def proyecto_params
      params.require(:proyecto).permit(:nombre,:alcance,:descripcion,:unidades)
    end

end
