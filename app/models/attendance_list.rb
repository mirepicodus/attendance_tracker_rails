class AttendanceList < ActiveRecord::Base
  belongs_to :student
  belongs_to :course_day
end
