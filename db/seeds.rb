Student.delete_all
Teacher.delete_all
Favorite.delete_all
Resource.delete_all
Hashtag.delete_all
ResourceHashtag.delete_all

Student.create(username: "filmon", email: "filmon@aol.com")
Teacher.create(username: "hunter", email: "hunter@barbie.com")
Resource.create(title: "Super cool title", content: "Angie is really #happy with this.")
Resource.create(title: "Super cool title number 2", content: "Angie #not really #happy with this.")
Favorite.create(resource_id: 1, favoritable_id: 1, favoritable_type: "Student")
Favorite.create(resource_id: 2, favoritable_id: 1, favoritable_type: "Teacher")
Hashtag.create(tag: "#something")
ResourceHashtag.create(resource_id: 1, hashtag_id: 1)

    <%= link_to "Home", root_path %>
    <% if teacher_logged_in? %>
      <%= link_to current_teacher.username, teacher_path(current_teacher) %>
      <%= link_to "Log out", logout_path, method: :delete %>
    <% elsif student_logged_in? %>
      <%= link_to current_student.username, student_path(current_student) %>
      <%= link_to "Log out", logout_path, method: :delete %>
    <% else %>
      <%= link_to "Register new student", new_student_path %>
      <%= link_to "Log in as a teacher", teacher_login_path %>
      <%= link_to "Log in as a student", student_login_path %>
    <% end %>
