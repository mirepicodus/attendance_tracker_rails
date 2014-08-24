class UpdatedAttendanceLists < ActiveRecord::Migration
  def change
    rename_table :attendance, :attendance_lists
  end
end
