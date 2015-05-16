class EstudiantesController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @estudiante = Estudiante.find(params[:id])
  end

  def new
    @estudiante = Estudiante.new
    render action: 'new'
  end

  def create
    Estudiante.destroy_all
    @estudiante = Estudiante.create(estudiante_params)
    render action: 'show'
  end

  def find_estudiante
    
  end

  private

  def estudiante_params
    params.require(:estudiante).permit(:nombre, :apellido, :documento, :grado, :sexo, :division)
  end

end
