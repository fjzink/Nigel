module SessionsHelper
  # def log_in(user)
  #   session[:user_id] = user.id
  # end

  def log_in_teacher(teacher)
    logout
    session[:teacher_id] = teacher.id
  end

  def log_in_student(student)
    logout
    session[:student_id] = student.id
  end

  def current_teacher
    @current_teacher ||= Teacher.find(session[:teacher_id])
  end

  def current_student
    @current_student ||= Student.find(session[:student_id])
  end

   # Returns true if the given user is the current user.
  # def current_user?(user)
  #   user == current_user
  # end

  def logged_in?
    !!current_user
  end

  def teacher_authorization?

  end

  def log_out
    session[:teacher_id] = nil
    session[:student_id] = nil
    @current_user = nil
  end
end
