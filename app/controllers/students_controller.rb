class StudentsController < ApplicationController
  def list
    @students = Student.all
    render('students/list.html.erb')
  end

  def show
    @student = Student.find(params[:id])
    render('students/show.html.erb')
  end

end
