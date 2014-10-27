class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :rememberable, :recoverable, :lockable, :registerable,
  # :timeoutable, :validatable and :omniauthable
  validates :email, :password, presence: true
  validates :email, uniqueness: {case_sensitive: true}
  devise :database_authenticatable, :trackable
  has_many :uploads
  accepts_nested_attributes_for :uploads, :allow_destroy => true
end
