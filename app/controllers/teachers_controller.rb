require 'sessions_helper'
class TeachersController < ApplicationController
  include SessionsHelper
  def show
    current_teacher
  end

  private

  def teacher_params
    params.require(:teacher).permit(:username, :email, :password)
  end
end
