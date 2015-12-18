User.create!(first_name: "Dan", last_name: "Woz", email: "dan@dan.com")
User.create!(first_name: "Tim", last_name: "Guy", email: "tim@tim.com")
User.create!(first_name: "Jon", last_name: "Folk", email: "jon@jon.com")
Admin.create!(first_name: "Bob", last_name: "Woz", email: "bob@bob.com", password: "password")


Article.create(
  title: "Trip",
  body: "This is where you can write information about the trips."
  )

Article.create(
  title: "About",
  body: "This is where you can write information about yourself, Fish First, etc."
  )

Article.create(
  title: "Contact",
  body: "This is where you can put your contact information."
  )
