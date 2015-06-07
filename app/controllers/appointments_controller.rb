class AppointmentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @appotime = Appotime.all
    @admission_request = AdmissionRequest.find(params[:admission_request_id])
    @appointment = @admission_request.build_appointment
  end

  def index

  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      @appointment.admission_request.status = "cita pendiente"
      @appointment.admission_request.save
      # @q = AdmissionRequest.find(@appointment.admission_request)
      redirect_to admission_requests_path
    else
      render :new
    end
  end

  def show

  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :type, :admission_request_id)
  end
end
