require 'spec_helper'

describe AttendanceList do
  it{should belong_to :course}
  it{should validate_presence_of :date}
  it{should have_many :students}
end
