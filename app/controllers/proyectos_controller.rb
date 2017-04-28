class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new]

  def index
    @proyectos = Proyecto.all
  end

  def show


  end

  def my_proyectos
    @proyectos = current_user.proyectos
  end

  def new
    @proyecto = Proyecto.new
  end

  def edit
    @proyecto = Proyecto.find(params[:id])
  end

  def create
    @proyecto = Proyecto.new(proyecto_params)
    @proyecto.user = current_user
    if @proyecto.save
      redirect_to @proyecto
    else
      render 'new'
    end
  end

  def update
    @proyecto = Proyecto.find(params[:id])

    if @proyecto.update(article_params)
      redirect_to @proyecto
    else
      render 'edit'
    end
  end

  def destroy
    @proyecto = Proyecto.find(params[:id])
    @proyecto.destroy
    redirect_to proyectos_path

  end

  private

    def set_proyecto
      @proyecto = Proyecto.find(params[:id])

    end

    def proyecto_params
      params.require(:proyecto).permit(:nombre,:alcance,:descripcion,:unidades, :user_id, :image)
    end

end
