class AttendanceListsController < ApplicationController
  def list
    @attendance_lists = AttendanceList.all
    render("attendance_lists/list.html.erb")
  end
end
