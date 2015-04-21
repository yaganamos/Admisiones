class AdatesController < ApplicationController
    before_filter :authenticate_user!
    before_action :find_adate, only: [:show]
    
	def index

	end

	def cita

	end

	def show

	end

	def new
		@adate = Adate.new
	end

	def create
		@adate = Adate.new[adates_params]
       if @adate.save
       	redirect_to @adate
       else
       	render "new"
       end
	end

	private

	def adates_params
		params.require(:Adate).permit(:date, :hour)

	end

	def find_adate
		@adate = Adate.find(params[:id])
	end



end
