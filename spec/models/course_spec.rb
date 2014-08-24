require 'spec_helper'

describe Course do
  it{should have_many :course_days}
  it{should validate_presence_of :name}
end
