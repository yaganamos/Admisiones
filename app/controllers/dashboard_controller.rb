class DashboardController < ApplicationController
	

	def infor
		
	end

	def show_pdf
      pdf_file = File.join(Rails.root, "app/views/dashboard/formulario_escolaridad.pdf")
      send_file(pdf_file, :filename => "formulario_escolaridad.pdf", :disposition => 'inline', :type => "application/pdf")
    end



    
end