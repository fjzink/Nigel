class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
  end

  def show
  end

  def edit
  end

  private

  def student_params
    params.require(:student).permit()
  end
end
