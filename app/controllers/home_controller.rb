class HomeController < ApplicationController
	def index
		if user_signed_in?
			redirect_to :controller=>'admission_requests', :action=> 'index'
		end

	end

	def show

	end
end
