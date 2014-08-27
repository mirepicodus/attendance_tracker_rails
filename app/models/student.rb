class Student < ActiveRecord::Base
  has_many :attendance_lists, dependent: :nullify
  has_many :course_days, through: :attendance_lists
  validates :name, presence: true
end
