class AdateController < ApplicationController
    before_filter :authenticate_user!
    before_action :find_adate, only: [:show]
    
	def index

	end

	def cita
		Adate.destroy_all
		Adate.create(date: "27/04/15", hour: "12:00pm")
		Adate.create(date: "28/04/15", hour: "12:20pm")
		Adate.create(date: "29/04/15", hour: "12:00pm")
		Adate.create(date: "30/04/15", hour: "12:20pm")

	end

	def show

	end
end
