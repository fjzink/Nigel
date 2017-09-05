class StudentsController < ApplicationController
  include SessionsHelper

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params)
    if student.save
      redirect_to root_path
    else
      @errors = student.errors.full_messages
      render new_student_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:username, :email, :password)
  end
end
