require 'spec_helper'

describe Course do
  it{should validate_presence_of :name}
  it{should have_many :attendance_lists}
end
