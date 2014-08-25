class AttendanceListsController < ApplicationController
  def list
    @course_days = CourseDay.all
    @students = Student.all
    @attendance_lists = AttendanceList.all
    @attendance_list = AttendanceList.new
    render("attendance_lists/list.html.erb")
  end

  def create
    @course_days = CourseDay.all
    @students = Student.all
    @attendance_lists = AttendanceList.all
    @attendance_list = AttendanceList.new(params[:attendance_list])
    if @attendance_list.save
      flash[:notice] = "List has been saved"
      redirect_to("/attendance_lists")
    else
      render("attendance_lists/list.html.erb")
    end
  end

  def edit
    @course_days = CourseDay.all
    @students = Student.all
    @attendance_lists = AttendanceList.all
    @attendance_list = AttendanceList.find(params[:id])
    if @attendance_list.update(params[:attendance_list])
      flash[:notice] = "List has been updated."
      redirect_to("/attendance_lists")
    else
      render("attendance_lists/list.html.erb")
    end
  end

  def destroy
    @attendance_list = AttendanceList.find(params[:id])
    @attendance_list.destroy
    redirect_to("/attendance_lists")
  end
end
