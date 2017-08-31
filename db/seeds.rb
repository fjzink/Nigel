Student.delete_all
Teacher.delete_all
Favorite.delete_all
Resource.delete_all
Hashtag.delete_all
ResourceHashtag.delete_all

Student.create(username: "filmon", email: "filmon@aol.com")
Teacher.create(username: "hunter", email: "hunter@barbie.com")
Resource.create(title: "Super cool title", content: "Angie is really happy with this.")
Resource.create(title: "Super cool title number 2", content: "Angie not really happy with this.")
Favorite.create(resource_id: 1, favoritable_id: 1, favoritable_type: "Student")
Favorite.create(resource_id: 2, favoritable_id: 1, favoritable_type: "Teacher")
Hashtag.create(tag: "#something")
ResourceHashtag.create(resource_id: 1, hashtag_id: 1)
