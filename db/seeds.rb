[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

topic = Topic.create!([
  {
    name: "LGBT+"
  },
  {
    name: "Environment"
  }
  ])

user = User.create!([
  { username: "mickyginger", firstname: "Mike", lastname: "Hayden", password: "password", password_confirmation: "password" },
  { username: "eisacke", firstname: "Emily", lastname: "Isacke", password: "password", password_confirmation: "password" },
  { username: "markyjangles", firstname: "Marc", lastname: "De Vois", password: "password", password_confirmation: "password" }
])
