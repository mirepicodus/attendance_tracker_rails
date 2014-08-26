class CoursesController < ApplicationController
  def list
    @course = Course.new
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
      render('courses/list.html.erb')
    end
  end

  def edit
    @courses = Course.all
    @course = Course.find(params[:id])
    if @course.update(params[:course])
      flash[:notice] = "#{@course.name} has been updated."
      redirect_to("/")
    else
      render("courses/list.html.erb")
    end
  end

end
