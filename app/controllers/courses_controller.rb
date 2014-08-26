class CoursesController < ApplicationController
  def list
    @courses = Course.all
    render('courses/list.html.erb')
  end

  def create
    @courses = Course.all
    @course = Course.new(params[:course])
    if @course.save
      flash[:notice] = "#{@course.name} has been saved."
      redirect_to("/")
    else
      render('course/list.html.erb')
    end
  end

end
