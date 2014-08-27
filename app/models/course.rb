class Course < ActiveRecord::Base
  has_many :course_days, dependent: :nullify
  validates :name, presence: true
end
