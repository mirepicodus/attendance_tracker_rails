require 'spec_helper'

describe Student do
  it{should have_and_belong_to_many :course_days}
  it{should validate_presence_of :name}
end
