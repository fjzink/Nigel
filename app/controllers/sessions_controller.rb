class SessionsController < ApplicationController

  def student_login
    @student = Student.new
  end

  def teacher_login
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.find_by(email: params[:session][:email].downcase)
    @student = Student.find_by(email: params[:session][:email].downcase)
    if @teacher && @teacher.authenticate(params[:session][:password])
      log_in_teacher(@teacher)
      redirect_to root_path
    else
      flash[:error] = @teacher.errors.full_messages
      render teacher_login_path
    end

    if @student && @student.authenticate(params[:session][:password])
      log_in_student(@student)
      redirect_to root_path
    else
      flash[:error] = @student.errors.full_messages
      render student_login_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
