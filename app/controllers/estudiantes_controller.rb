class EstudiantesController < ApplicationController
	def show
	end

	def new
		@estudiante = Estudiante.new
		render action: 'new'
	end
	def create

		@estudiante = Estudiante.create(estudiate_params)
	end

	def estudiante_params
	params.require(:estudiante).permit(:nombre, :apellido, :documento, :grado, :sexo, :division)
end
def find_estudiante
	@estudiante = Estudiante.find(params[:id])
end
end
