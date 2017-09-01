Student.delete_all
Teacher.delete_all
Favorite.delete_all
Resource.delete_all
Hashtag.delete_all
ResourceHashtag.delete_all

Student.create(username: "filmon", email: "filmon@aol.com", password: "password")
Teacher.create(username: "hunter", email: "hunter@barbie.com", password: "password")
Resource.create(title: "Super cool title", content: "Angie is really #happy with this.", link: "http://www.google.com")
Resource.create(title: "Super cool title number 2", content: "Angie #not really #happy with this.")
Favorite.create(resource_id: Resource.first.id, favoritable_id: Student.first.id, favoritable_type: "Student")
Favorite.create(resource_id: Resource.last.id, favoritable_id: Teacher.first.id, favoritable_type: "Teacher")
Hashtag.create(tag: "#something")
ResourceHashtag.create(resource_id: Resource.last.id, hashtag_id: Hashtag.last)
