class SessionsController < ApplicationController
  include SessionsHelper

  def student_login

  end

  def teacher_login

  end

  def teacher_create
    @teacher = Teacher.find_by(email: params[:email].downcase)
    if @teacher && @teacher.authenticate(params[:password])
      log_in_teacher(@teacher)
      redirect_to root_path
    else
      flash[:error] = @teacher.errors.full_messages
      render teacher_login_path
    end
  end

  def student_create
    @student = Student.find_by(email: params[:email].downcase)
    if @student && @student.authenticate(params[:password])
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
