class AppointmentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @appotime = Appotime.where(appointment_type: "inscripcion")
    @admission_request = AdmissionRequest.find(params[:admission_request_id])
    @appointment = @admission_request.build_appointment
    if @admission_request.status == "inscrito"
      @appotime = Appotime.where(appointment_type: "prueba admision")
    else
      if @admission_request.status == "admitido"
        @appotime = Appotime.where(appointment_type: "entrevista")
      else
        if @admission_request.status == "matricula pendiente"
           @appotime = Appotime.where(appointment_type: "matricula")
        end
      end
    end
  end

  def index

  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save

      if @appointment.admission_request.status == "inscrito"
        @appointment.admission_request.status = "prueba pendiente"
        @appointment.admission_request.save
        else
        if @appointment.admission_request.status == "new"
           @appointment.admission_request.status = "cita pendiente"
           @appointment.admission_request.save
        else
          if @appointment.admission_request.status == "admitido"
           @appointment.admission_request.status = "entrevista pendiente"
           @appointment.admission_request.save
         else
          if @appointment.admission_request.status == "matricula pendiente"
           @appointment.admission_request.status = "oficializacion pendiente"
           @appointment.admission_request.save
           end
         end
        end
      end

      redirect_to admission_requests_path
    else
      render :new
    end
  end

  def show

  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :admission_request_id)
  end
end
