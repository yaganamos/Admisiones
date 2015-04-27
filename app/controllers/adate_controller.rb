class AdateController < ApplicationController
    before_filter :authenticate_user!
    before_action :find_adate, only: [:show]
    
	def index

	end

	def cita
		@adate = Adate.create(date: "10", hour: "mil")

	end

	def show

	end
end
