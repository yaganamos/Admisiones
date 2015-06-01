class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index
		@requests = AdmissionRequest.where(user: current_user)
	end

	def infor
		
	end

	def show_pdf
      pdf_file = File.join(Rails.root, "app/views/dashboard/formulario_escolaridad.pdf")
      send_file(pdf_file, :filename => "formulario_escolaridad.pdf", :disposition => 'inline', :type => "application/pdf")
    end



    
end