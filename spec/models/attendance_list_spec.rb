require 'spec_helper'

describe AttendanceList do
  it { should validate_uniqueness_of(:student_id).scoped_to :course_day_id }
end
