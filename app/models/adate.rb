class Adate < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :date, :hour
end
