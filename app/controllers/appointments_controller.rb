class AppointmentsController < ApplicationController
	before_filter :authenticate_user! 

    def new
      @q = AdmissionRequest.find(params[:ejea])
    	@appointment = Appointment.new(admission_request: @q)

	end


 def index
 
 end
 def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      @q = AdmissionRequest.find(@appointment.admission_request)
      redirect_to admission_requests_path
    else
      render :new
    end
  end

	def show
    
	end
    private

  def appointment_params
    params.require(:appointment).permit(:date, :type)
  end
end
