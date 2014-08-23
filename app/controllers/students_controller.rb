class StudentsController < ApplicationController
  def list
    @students = Student.all
    render('students/list.html.erb')
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      flash[:notice] = "#{@student.name} has been saved."
      redirect_to("/students")
    end
  end

end
