class CourseDaysController < ApplicationController
  def list
    @courses = Course.all
    @course_day = CourseDay.new
    @course_days = CourseDay.all
    render('course_days/list.html.erb')
  end

  def create
    @courses = Course.all
    @course_days = CourseDay.all
    @course_day = CourseDay.new(params[:course_day])
    if @course_day.save
      flash[:notice] = "#{@course_day.date} has been saved."
      redirect_to("/course_days")
    else
      render('course_days/list.html.erb')
    end
  end

  def edit
    @courses = Course.all
    @course_days = CourseDay.all
    @course_day = CourseDay.find(params[:id])
    if @course_day.update(params[:course_day])
      flash[:notice] = "#{@course_day.date} has been updated."
      redirect_to("/course_days")
    else
      render("course_days/list.html.erb")
    end
  end

  def destroy
    @course_day = CourseDay.find(params[:id])
    @course_day.destroy
    redirect_to("/course_days")
  end
end
