class UpdateAttendanceListsBooleansDefault < ActiveRecord::Migration
  def change
    change_column :attendance_lists, :attend, :boolean, default: false
    change_column :attendance_lists, :partial, :boolean, default: false
  end
end

