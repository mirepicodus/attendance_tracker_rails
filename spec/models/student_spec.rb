require 'spec_helper'

describe Student do
  it{should belong_to :attendance_list}
end
