class Appointment < ActiveRecord::Base
	belongs_to :admission_request
	has_one :appotime
end
