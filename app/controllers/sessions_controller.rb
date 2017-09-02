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
      @errors = ["Invalid email/password."]
      render :teacher_login
    end
  end

  def student_create
    @student = Student.find_by(email: params[:email].downcase)
    if @student && @student.authenticate(params[:password])
      log_in_student(@student)
      redirect_to root_path
    else
      @errors = ["Invalid email/password."]
      render :student_login
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
