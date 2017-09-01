module SessionsHelper
  def log_in_teacher(teacher)
    # logout
    session[:teacher_id] = teacher.id
  end

  def log_in_student(student)
    # logout
    session[:student_id] = student.id
  end

  def current_student
    Student.find_by(id: session[:student_id])
  end

  def current_teacher
    Teacher.find_by(id: session[:teacher_id])
  end

  def student_logged_in?
    !!current_student
  end

  def teacher_logged_in?
    !!current_teacher
  end

  def log_out
    session[:teacher_id] = nil
    session[:student_id] = nil
    current_student = nil
    current_teacher = nil
  end
end
