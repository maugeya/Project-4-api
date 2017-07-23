[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

topic = Topic.create!([
  {
    name: "LGBT+"
  },{
    name: "Environment"
  },{
    name: "Social Policy"
  },{
    name: "Cultural Diversity"
  },{
    name: "World Issues",
  },{
    name: "Gender Equality"
  },{
    name: "Social Enterprise"
  },{
    name: "Homelessness"
  },{
    name: "Arts"
  }

  ])

user = User.create!([
  {
    username: "mickyginger",
    firstname: "Mike",
    lastname: "Hayden",
    password: "password",
    password_confirmation: "password",
    email: "mike@ga.co",
    topics: topic[2, 3]
  },
  {
    username: "eisacke",
    firstname: "Emily",
    lastname: "Isacke",
    password: "password",
    password_confirmation: "password",
    email: "emily@ga.co",
    topics: topic[9, 8]
  },
  {
    username: "markyjangles",
    firstname: "Marc",
    lastname: "De Vois",
    password: "password",
    password_confirmation: "password",
    email: "mark@ga.co",
    topics: topic[1, 4]
  },
  {
    username: "JackyBN",
    firstname: "Jack",
    lastname: "May",
    password: "password",
    password_confirmation: "password",
    email: "jack@email.co",
    topics: topic[3, 1]
  },
  {
    username: "MikeyDG",
    firstname: "Mike",
    lastname: "de Groot",
    password: "password",
    password_confirmation: "password",
    email: "mike@email.co",
    topics: topic[1, 6]
  },
  {
    username: "BigAnge",
    firstname: "Angela",
    lastname: "Maugey",
    password: "password",
    password_confirmation: "password",
    email: "ange@email.co",
    topics: topic[1, 4]
  },
  {
    username: "SLD",
    firstname: "Jason",
    lastname: "Tason",
    password: "password",
    password_confirmation: "password",
    email: "jason@email.co",
    topics: topic[5, 7]
  },
  {
    username: "BigO",
    firstname: "Olly",
    lastname: "Middleton",
    password: "password",
    password_confirmation: "password",
    email: "olly@email.co",
    topics: topic[1, 4]
  },
  {
    username: "LittleO",
    firstname: "Alex",
    lastname: "Okamoto",
    password: "password",
    password_confirmation: "password",
    email: "alexO@email.co",
    topics: topic[2, 5]
  },
  {
    username: "Biff",
    firstname: "Beth",
    lastname: "Rice",
    password: "password",
    password_confirmation: "password",
    email: "beth@email.co",
    topics: topic[5, 3]

  },
  {
    username: "AlexCats",
    firstname: "Alex",
    lastname: "Cviek",
    password: "password",
    password_confirmation: "password",
    email: "alexC@email.co",
    topics: topic[1, 5]
  }

])


post = Post.create!([
  {
    title: "Chalcots Estate evacuations",
    body: "I have a close friend who has been evacuated from one of these blocks. The council have not been in touch with any formal documentation to why they were moved in the first place, and now they've been asked to move back with no proof that it is now safe. My friend is a single mother with two kids, she's been in a hotel room with them for the last 3 weeks just to be told that she would be charged as of Monday if she didn't move back in. If the blocks are so safe, why are there still Fire Marshals on each floor? Someone needs to give answers!",
    link_url: "http://camdennewjournal.com/article/chalcots-home-lawyers",
    user: user[6]

  }
  ])
