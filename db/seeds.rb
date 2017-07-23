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
    name: "Business"
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
    topics: [topic[0], topic[3]]
  },
  {
    username: "eisacke",
    firstname: "Emily",
    lastname: "Isacke",
    password: "password",
    password_confirmation: "password",
    email: "emily@ga.co",
    topics: [topic[8], topic[6], topic[3]]
  },
  {
    username: "markyjangles",
    firstname: "Marc",
    lastname: "De Vois",
    password: "password",
    password_confirmation: "password",
    email: "mark@ga.co",
    topics: [topic[3], topic[4], topic[8], topic[5]]
  },
  {
    username: "JackyBN",
    firstname: "Jack",
    lastname: "May",
    password: "password",
    password_confirmation: "password",
    email: "jack@email.co",
    topics: [topic[3], topic[4], topic[5]]
  },
  {
    username: "MikeyDG",
    firstname: "Mike",
    lastname: "de Groot",
    password: "password",
    password_confirmation: "password",
    email: "mike@email.co",
    topics: [topic[1], topic[0], topic[3], topic[4]]
  },
  {
    username: "BigAnge",
    firstname: "Angela",
    lastname: "Maugey",
    password: "password",
    password_confirmation: "password",
    email: "ange@email.co",
    topics: [topic[1], topic[0], topic[8], topic[5]]
  },
  {
    username: "SLD",
    firstname: "Jason",
    lastname: "Tason",
    password: "password",
    password_confirmation: "password",
    email: "jason@email.co",
    topics: [topic[5], topic[3], topic[7]]
  },
  {
    username: "BigO",
    firstname: "Olly",
    lastname: "Middleton",
    password: "password",
    password_confirmation: "password",
    email: "olly@email.co",
    topics: [topic[1], topic[4]]
  },
  {
    username: "LittleO",
    firstname: "Alex",
    lastname: "Okamoto",
    password: "password",
    password_confirmation: "password",
    email: "alexO@email.co",
    topics: [topic[2]]
  },
  {
    username: "Biff",
    firstname: "Beth",
    lastname: "Rice",
    password: "password",
    password_confirmation: "password",
    email: "beth@email.co",
    topics: [topic[5]]

  },
  {
    username: "AlexCats",
    firstname: "Alex",
    lastname: "Cviek",
    password: "password",
    password_confirmation: "password",
    email: "alexC@email.co",
    topics: [topic[1]]
  },
  {
    username: "Lozza",
    firstname: "Lauren",
    lastname: "Armbrust",
    password: "password",
    password_confirmation: "password",
    email:"lauren@email.co",
    topics: [topic[8], topic[5], topic[6]]
  }

])


  post = Post.create!([
    {
      title: "Chalcots Estate evacuations",
      body: "I have a close friend who has been evacuated from one of these blocks. The council have not been in touch with any formal documentation to why they were moved in the first place, and now they've been asked to move back with no proof that it is now safe. My friend is a single mother with two kids, she's been in a hotel room with them for the last 3 weeks just to be told that she would be charged as of Monday if she didn't move back in. If the blocks are so safe, why are there still Fire Marshals on each floor? Someone needs to give answers!",
      link_url: "http://camdennewjournal.com/article/chalcots-home-lawyers",
      user: user[5],
      topics: [topic[2]]

    },
    {
      title: "Protesting Commercialism at London Pride",
      body: "Many people in the LGBT+ community are against the commercialism of pride. Yes, money is needed to put on the event but why is it that smaller organisations such as social activist groups, should have to pay to be involved? A part of the community let their voices be heard pride weekend. We made our way to the front and refused to more unless our voices were heard!",
      link_url: "http://www.huffingtonpost.co.uk/entry/london-pride-dup_uk_59612661e4b0d5b458eacfd5",
      image: "http://i.imgur.com/nYtXaWk.jpg",
      user: user[5],
      topics: [topic[0]]
    },
    {
      title: "Why has R.Kelly not been stopped before this?",
      body: "I remember being younger and hearing about R.Kelly and Aaliyah getting married. It's shocking how he able to continue his behaviour",
      link_url: "https://www.vox.com/first-person/2017/7/21/16008230/r-kelly-sex-cult-abuse",
      user: user[3],
      topics: [topic[4], topic[5]]
    },
    {
      title: "Illegal Rainforest Destruction",
      body: "A few top global brands have been accused of using palm oil from the Sumatra's rainforest to produce loads of their products. This is pretty devastating, why are there never any repercussions for people doing this?",
      link_url: "https://www.theguardian.com/environment/2017/jul/21/pepsico-unilever-and-nestle-accused-of-complicity-in-illegal-rainforest-destruction",
      image: "http://i.imgur.com/QX4BDut.jpg",
      user: user[0],
      topics: [topic[1], topic[4]]
    },
    {
      title: "March for More Happiness",
      body: "Going to this march in August. A massive street party to get together and share some ideas.",
      link_url: "https://www.eventbrite.com/e/march-for-more-happiness-tickets-35923941476?aff=es2",
      user: user[0],
      topics: [topic[2], topic[4]]
    },
    {
      title: "Social housing residents being moved out of London",
      body: "I know this has been happening for a while but it's still pretty shocking. People are being forced out of houses and areas they've lived in for generations. Families and support units are being torn apart.",
      link_url: "http://www.bbc.co.uk/news/uk-england-london-39386587",
      image: "http://i.imgur.com/JI5qQbh.jpg",
      user: user[0],
      topics: [topic[7],topic[2]]
    },
    {
      title: "Environment Graphic Novels you may be interested in",
      body: "Hey guys, only just stumbled across a few of these graphic novels. Thought I'd put them up here incase anyone else is into similar!",
      link_url: "http://www.sierraclub.org/sierra/2015-1-january-february/green-life/4-thought-provoking-graphic-novels-about-environment",
      user: user[0],
      topics: [topic[4], topic[8]]
    },
    {
      title: "Oil Spillage Invention",
      body: "Been reading up on this new invention that is hopefully going to help the issue of cleaning up oil spillages.",
      link_url: "http://www.huffingtonpost.ca/2017/03/07/oil-spill-sponge_n_15218072.html",
      image: "http://i.imgur.com/uzKl9zh.jpg",
      user: user[0],
      topics: [topic[1], topic[4]]
    },
    {
      title: "People are kicking off about the new Doctor Who being a woman",
      body: "I mean, this is actually ridiculous. As if there aren't enough male role models in Sci-fi for men.",
      image: "http://i.imgur.com/DcUJ6k3.jpg",
      link_url: "http://www.vulture.com/2017/07/a-former-doctor-who-doctor-isnt-pleased-with-female-casting.html",
      user: user[1],
      topics: [topic[5], topic[8]]
    },
    {
      title: "This kid is doing amazing things",
      body: "I first heard about Mo whilst listening to The Read podcasts. He started out when he was 13 making bow ties and selling them. He recently got an NBA contract at 15! He's an inspiration to other young black entreprenuers out there! Check him out and give him some business!",
      link_url: "https://www.mosbowsmemphis.com/",
      user: user[1],
      topics: [topic[3], topic[6]]

    },
    {
      title: "Mikaila Ulmer, Lemonade",
      body: "Reading about Mikaila is unreal. She was just 4 when she was sent her Granny Helen's lemonade recipe. Since then she has worked to build her own little lemonade empire, using locally sourced honey to sweeten her drinks (a decision made after she was stung a couple of times). Her drinks are now being sold in Wholefoods after scoring a lucritive contract!",
      link_url: "https://meandthebees.com/",
      user: user[1],
      topics: [topic[3], topic[6]]
    },
    {
      title: "UK podcast that's well worth a listen",
      body: "Satia and Imre talk about topical subjects to do with diversity in the UK, on a weekly basis. If you like the show, check out the rest on the ShoutOut Network.",
      link_url: "http://shoutoutnetwork.co.uk/shows/melanin-millennials/",
      user: user[1],
      topics: [topic[3], topic[6]]
    },
    {
      title: "Gender Pay gap in BBC",
      body: "What is happening in the BBC in relation to the gender pay gap is shocking. How is it that someone like Chris Evans manages to get so much cash. It's 2017 people, equality for all!",
      link_url: "http://www.huffingtonpost.com/entry/bbc-pay-gap-letter_us_5974c053e4b09e5f6ccff001",
      user: user[2],
      topics: [topic[5], topic[8]]
    },
    {
      title: "Haiti prison population",
      body: "I recently watched this documentary of the treatment of prisoners within the Haiti legal system. It seems mad that people still keep legal records on paper and the only way to fix a problem is to find a file amongst thousands of others. 80% of inmates have been locked up without actually being convicted of a crime. Many of them have never gone to trial, have not been released after being found not guilty or have not been released when new evidence comes to light that they must be innocent.",
      link_url: "http://www.channel4.com/programmes/unreported-world/on-demand/63201-014",
      user: user[2],
      topics: [topic[4], topic[3]]
    },
    {
      title: "Art exhibitions",
      body: "Does anyone know of any art exhibitions coming up in the near future in London?",
      user: user[2],
      topics: [topic[8]]
    },
    {
      title: "Excellent book, must read!",
      body: "Was passed this book by a friend...'Why I'm No Longer Talking To White People About Race' by Reni Eddo Lodge. Both informative and personal, the book taught me a lot. There's a great few chapters on UK Black history, things that are not taught in school! Honestly would encourage, everyone to check it out!",
      link_url: "http://renieddolodge.co.uk/",
      user: user[3],
      topics: [topic[8], topic[3]]
    }

    ])

  comment = Comment.create!([
    {
      body: "I can't believe the way people have just expected to take the council's word that everything is alright. Especially after they weren't to be trusted in the first place when they made the original work that was unsafe!",
      user: user[3],
      post: post[0]

    },
    {
      body: "My friend said any compensation they received as had to go on eating out all the time. They've also received news that the council tax will be going up from next month!",
      user: user[5],
      post: post[0]
    },
    {
    body: "This looks amazing! I know that I'd rather see minority groups than big banking floats in the parade!",
    user: user[9],
    post: post[1]
  },
  {
    body: "Are there any lgbt+ groups that you know that I could tag along to?",
    user: user[9],
    post: post[1]
  },
  {
    body: "I go to the Sexual Avengers, we usually meet on Wednesday evenings at the LimeWharf in Bethnal Green form 7pm. You should come to a meeting some time, see if you like it.",
    user: user[5],
    post: post[1]
  },
  {
    body: "How is anyone still buying his music?!",
    user: user[7],
    post: post[2]
  },
  {
    body: "There was a case not so long ago, but he was not found guilty. It's like the women he is targetting are falling through the cracks and not cared about",
    user: user[8],
    post: post[2]
  },
  {
    body: "It really won't be long until there's no rainforest left :(",
    user: user[3],
    post: post[3]
  },
  {
    body: "It's so sad to think that once these forests are gone, there's no coming back. The loss of all those trees and animals!",
    user: user[7],
    post: post[3]
  },
  {
    body: "I'll see you there, I'm planning on coming too!",
    user: user[1],
    post: post[4]
  },
  {
    body: "I've written to my local MP about this. Will post a copy of my open letter if anyone wants to send on?",
    user: user[4],
    post: post[5]
  },
  {
    body: "Thanks so much for posting this!",
    user: user[10],
    post: post[6]
  },
  {
    body: "This is incredible!",
    user: user[6],
    post: post[7]
  },
  {
    body: "Would love to work on this kind of thing in the future",
    user: user[4],
    post: post[7]
  },
  {
    body: "People need to get in line with the current times! From what I know, the Doctor can change into a different person right?! I thought that was how they've explained the different actors playing the lead.",
    user: user[8],
    post: post[8]
  },
  {
    body: "I agree, what does it matter who plays the character. The previous actor in the article seems miss informed as to how many inspirational male characters there are in Sci-fi",
    user: user[5],
    post: post[8]
  },
  {
    body: "There are barely any women in Sci-fi. This is excellent to inspire young girls, who must often turn on the TV and see noone they can see themselves in.",
    user: user[2],
    post: post[8]
  },
  {
    body: "Such an inspiration! How does he find the time to set up a business inbetween school work?!",
    user: user[0],
    post: post[9]
  },
  {
    body: "How is a four year old so business savvy? She's going to do big things in the future if she's managed to get such a huge contract at such a young age.",
    user: user[10],
    post: post[10]
  },
  {
    body: "We need more UK podcasts like this, will check out the others on the ShoutOut Network for sure.",
    user: user[3],
    post: post[11]
  },
  {
    body: "There's actually a live show coming up in London. Think all the tickets are sold out now but keep an eye out for future events!",
    user: user[9],
    post: post[11]
  },
  {
    body: "It's kind of upsetting to pay a TV License to a company that is actively keeping the gender pay gap alive and well.",
    user: user[3],
    post: post[12]
  },
  {
    body: "It's really not a great example to encourage any women to get into that kind of industry, if everyone isn't paid fairly for the work they do. It's pretty appalling that this is happening in 2017",
    user: user[4],
    post: post[12]
  },
  {
    body: "Thanks for the link sharing. Really informative documentary!",
    user: user[3],
    post: post[13]
  },
  {
    body: "Anyone interested in prison reform should also check out some of Angela Davis' essays on abolishing prisons.",
    user: user[5],
    post: post[13]
  },
  {
    body: "There's the 'Soul of a Nation' exhibition on at the Tate. http://www.tate.org.uk/whats-on/tate-modern/exhibition/soul-nation-art-age-black-power",
    user: user[4],
    post: post[14]
  },
  {
    body: "Thank you! Will check it out.",
    user: user[2],
    post: post[14]
  },
  {
    body: "I've been to a panel talk that Reni did. She is an amazing speaker and it's a great book. I too learnt lots that I had no idea about. I know a few people who could benefit from reading this!",
    user: user[5],
    post: post[15]
  }
    ])
