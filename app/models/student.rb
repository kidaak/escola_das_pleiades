class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :rememberable, :recoverable, :lockable, :registerable,
  # :timeoutable, :validatable and :omniauthable
  devise :database_authenticatable, :trackable
end
