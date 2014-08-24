class UpdatedCourseDays < ActiveRecord::Migration
  def change
    add_column :course_days, :courses_id, :integer
  end
end
