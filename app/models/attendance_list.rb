class AttendanceList < ActiveRecord::Base
  belongs_to :course
  validates :date, presence: true
  has_many :students
end
