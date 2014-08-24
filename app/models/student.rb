class Student < ActiveRecord::Base
  has_many :attendance_lists
  has_many :course_days, through: :attendance_lists
  validates :name, presence: true
end
