class UpdatedStudentsAttendanceLists < ActiveRecord::Migration
  def change
    create_table  :course_days do |t|
      t.date :date
    end

    drop_table :attendance_lists

    create_table  :attendance do |t|
      t.belongs_to :course_days
      t.belongs_to :students
      t.boolean "attend"
      t.boolean "partial"
    end

    remove_column :students, :attendance_list_id

  end
end
