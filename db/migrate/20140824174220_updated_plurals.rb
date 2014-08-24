class UpdatedPlurals < ActiveRecord::Migration
  def change
    rename_column :attendance_lists, :course_days_id, :course_day_id
    rename_column :attendance_lists, :students_id, :student_id
    rename_column :course_days, :courses_id, :course_id
  end
end
