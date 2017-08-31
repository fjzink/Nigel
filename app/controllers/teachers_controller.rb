class TeachersController < ApplicationController
  def show
    current_teacher
  end

  private

  def teacher_params
    params.require(:teacher).permit(:username, :email, :password)
  end
end
