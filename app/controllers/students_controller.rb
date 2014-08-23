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

  def update
    @students = Student.all
    @student = Student.find(params[:id])
    if @student.update(params[:student])
      flash[:notice] = "#{@student.name} has been updated."
      redirect_to("/students")
    else
      render("students/list.html.erb")
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to("/students")
  end

end
