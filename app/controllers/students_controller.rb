class StudentsController < ApplicationController
  def list
    @students = Student.all
    render('students/list.html.erb')
  end

  def create
    @student = Student.create(params[:student])
    redirect_to("/students")
  end

end
