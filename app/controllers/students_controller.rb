class StudentsController < ApplicationController
  def list
    @student = Student.new
    @students = Student.all
    render('students/list.html.erb')
  end

  def create
    @students = Student.all
    @student = Student.new(params[:student])
    if @student.save
      flash[:notice] = "#{@student.name} has been saved."
      redirect_to("/students")
    else
      render('students/list.html.erb')
    end
  end

end
