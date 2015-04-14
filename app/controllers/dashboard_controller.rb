class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index
		

	end

    def show
        
        respond_to do |format|
			format.html
			format.pdf do
				render :pdf => "example.pdf",
				:disposition => "inline",
                :template => "dashboard/requisitos.html.erb"
               

            end
        end
    end
end