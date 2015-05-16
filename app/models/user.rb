class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :adates
  has_one :estudiante
  has_many :admission_requests
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
