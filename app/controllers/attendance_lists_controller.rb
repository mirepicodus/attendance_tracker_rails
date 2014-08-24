class AttendanceListsController < ApplicationController
  def list
    @course_days = CourseDay.all
    @students = Student.all
    @attendance_lists = AttendanceList.all
    render("attendance_lists/list.html.erb")
  end

  def create
    @course_days = CourseDay.all
    @students = Student.all
    AttendanceList.create(params[:attendance_list])
    redirect_to("/attendance_lists")
  end
end
