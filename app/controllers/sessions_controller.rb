class SessionsController < ApplicationController

  def student_login
  end

  def teacher_login
  end

  def create
    @teacher = Teacher.find_by(email: params[:session][:email].downcase)
    @student = Student.find_by(email: params[:session][:email].downcase)
    if @teacher && @teacher.authenticate(params[:session][:password])
      log_in_teacher(@teacher)
      redirect_to teacher_path
    else
      @student && @student.authenticate(params[:session][:password])
      log_in_student(@student)
      redirect_to student_path
  end
end

  def destroy
    log_out
    redirect_to root_path
  end
end
