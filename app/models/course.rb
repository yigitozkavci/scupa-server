class Course < ApplicationRecord
  has_many :user_courses
  belongs_to :owner, class_name: 'User'
  validates :name, uniqueness: { scope: :school_id }
end
