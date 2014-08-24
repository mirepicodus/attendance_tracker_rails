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
    @attendance_list = AttendanceList.new(params[:attendance_list])
    if @attendance_list.save
      flash[:notice] = "List has been saved"
      redirect_to("/attendance_lists")
    end
  end
end
