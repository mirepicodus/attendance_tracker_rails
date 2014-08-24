class CourseDaysController < ApplicationController
  def list
    @course_day = CourseDay.new
    @course_days = CourseDay.all
    render('course_days/list.html.erb')
  end

  def create
    @course_days = CourseDay.all
    @course_day = CourseDay.new(params[:course_day])
    if @course_day.save
      flash[:notice] = "#{@course_day.date} has been saved."
      redirect_to("/course_days")
    else
      render('course_days/list.html.erb')
    end
  end
end
