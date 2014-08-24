class CourseDay < ActiveRecord::Base
  belongs_to :course
  has_many :attendance_lists
  has_many :students, through: :attendance_lists
  validates :date, presence: true
end
