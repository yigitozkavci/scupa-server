class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_schools
  has_many :schools, through: :user_schools

  has_many :user_courses
  has_many :courses, through: :user_courses

  has_many :courses, foreign_key: :owner_id
end
