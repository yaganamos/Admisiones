class Appointment < ActiveRecord::Base
  belongs_to :admission_request
end
