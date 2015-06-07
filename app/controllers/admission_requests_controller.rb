class AdmissionRequestsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @request = AdmissionRequest.new(user: current_user)
  end

  def index
    @requests = AdmissionRequest.where(user: current_user)
  end

  def create
    @request = AdmissionRequest.new(admission_params)
    @request.status = "new"
    if @request.save
      redirect_to admission_requests_path
    else
      render :new
    end
  end

  private

  def admission_params
    params.require(:admission_request).permit(:user_id,:name, :last_name, :document, :grade, :gender, :status)
  end
end
