class School < ApplicationRecord
  has_many :courses
  has_many :user_schools
end
