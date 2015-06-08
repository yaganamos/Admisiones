class AppotimesController < ApplicationController
	before_filter :authenticate_user!

 def new
end

def create
	 @appotime = Appotime.new(appotime_params)
	 @appotime.save
	 
end


 def index

 end

 def appotime_params
    params.require(:appotime).permit(:appointment_date)
  end

end
