class AttendanceList < ActiveRecord::Base
  belongs_to :student
  belongs_to :course_day
  validates :student_id, uniqueness: {scope: :course_day_id, message: "is already used with this date."}
end

