class CoursesController < ApplicationController
  def list
    @courses = Course.all
    render('courses/list.html.erb')
  end
end
