class Student < ActiveRecord::Base
  belongs_to :attendance_list
  validates :name, presence: true
end
