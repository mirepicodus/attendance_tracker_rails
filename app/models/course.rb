class Course < ActiveRecord::Base
  has_many :course_days
  validates :name, presence: true
end
