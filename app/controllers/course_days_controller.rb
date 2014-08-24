class CourseDaysController < ApplicationController
  def list
    @course_days = CourseDay.all
    render('course_days/list.html.erb')
  end
end
