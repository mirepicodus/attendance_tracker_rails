class Student < ActiveRecord::Base
  belongs_to :attendance_list
end
