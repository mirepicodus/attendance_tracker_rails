class CourseDaysController < ApplicationController
  def list
    @course_days = CourseDay.all
    render('course_days/list.html.erb')
  end

  def create
    CourseDay.create(params[:course_day])
    redirect_to("/course_days")
  end
end
