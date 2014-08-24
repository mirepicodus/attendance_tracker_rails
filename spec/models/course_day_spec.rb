require 'spec_helper'

describe CourseDay do
  it{should belong_to :course}
  it{should have_and_belong_to_many :students}
  it{should validate_presence_of :date}
end
