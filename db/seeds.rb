Company.destroy_all
puts 'Cleaning database... company'

User.destroy_all
puts 'Cleaning database...user'

Team.destroy_all
puts 'Cleaning database...team'

HierarchyRank.destroy_all
puts 'Cleaning database...hierarchy_ranks'

Value.destroy_all
puts 'Cleaning database...values'

puts 'Creating companies...'
zapier = Company.create!(name: "Zapier",
  country: "USA",
  city: "San Francisco",
  address: "548 Market Street",
  zipcode: "94016",
  phone_number: "+1 877-976-5813",
  activity: "Task automation",
  logo: "https://www.stickpng.com/assets/images/5842fb7ba6515b1e0ad75b33.png",
  photo_header: "https://youteam.io/blog/wp-content/uploads/2018/04/Screenshot-at-Apr-26-12-13-36-1500x500.png",
  photo_description: "https://danjcm2668ozn.cloudfront.net/Railsware-team-compressor.jpg",
  twitter_url: "https://twitter.com/zapier?lang=fr",
  linkedin_url: "https://fr.linkedin.com/company/zapier",
  github_url: "https://github.com/zapier",
  website_url: "https://zapier.com",
  facebook_url: "https://www.facebook.com/ZapierApp/",
  short_description: "We're a 100% distributed team helping people across the world automate the boring and tedious parts of their job. We do that by helping everyone connect the web applications they already use and love.
    We believe that there are jobs a computer is best at doing and that there are jobs a human is best at doing. We want to empower businesses to create processes and systems that let computers do what they are best at doing and let humans do what they are best at doing.
    We believe that with the right tools, you can have big impact with less hassle.
    We believe in small teams. Small teams are fast and nimble. Small teams mean less bureaucracy and less management and more getting things done.
    Learn more about how we work by reading our book on remote work.
    We believe in a safe, welcoming, and inclusive environment. All teammates at Zapier agree to a code of conduct.",
  mission: "We're just some humans who think computers should do more work.",
  history: "Zapier was started in Columbia, Missouri by co-founders Wade Foster, Bryan Helmig, and Mike Knoop as part of the first Startup Weekend Columbia in 2011.[3] After initially submitting an application for the Winter 2012 funding cycle and being rejected, they then built their initial prototype with 25 apps, and were accepted to Y Combinator[4] startup seed accelerator in the Summer 2012 funding cycle. As a result of the acceptance, the company was relocated to Mountain View, California in Spring 2012. In October of the same year, Zapier received a $1.3 million seed funding round led by global venture investment firm Bessemer Venture Partners. Zapier reached profitability in 2014",
  founded_in: 2011,
  )
puts 'Finished companies!'

puts 'Creating value_categories...'
people = ValueCategory.create!(name: "People", picto_url: "https://www.letsdeel.com/089c0c75424c661f5e072575177da020.png")
care = ValueCategory.create!(name: "Care", picto_url: "https://www.letsdeel.com/01e374b8f502f42385ae6457ee03bba1.png")
ambition = ValueCategory.create!(name: "Ambition", picto_url: "https://www.letsdeel.com/e6ba885ab3a3c52974c1dd57a0b71cdc.pngs")
simplicity = ValueCategory.create!(name: "Simplicity", picto_url: "https://www.letsdeel.com/97ee6fdee2c89e407efa020f626a8f58.png")
growth = ValueCategory.create!(name: "Simplicity", picto_url: "https://www.letsdeel.com/97ee6fdee2c89e407efa020f626a8f58.png")
lean = ValueCategory.create!(name: "Simplicity", picto_url: "https://www.letsdeel.com/97ee6fdee2c89e407efa020f626a8f58.png")
hacker = ValueCategory.create!(name: "Simplicity", picto_url: "https://www.letsdeel.com/97ee6fdee2c89e407efa020f626a8f58.png")
puts 'Finished value_categories!'

puts 'Creating values...'
value_1 = Value.create!(title: "People First", content: "We strive to build products that empower people to work together no matter where they are.", company: zapier, value_category: people)
value_2 = Value.create!(title: "Care", content: "We aspire to be generous and thoughtful in every interaction with each other and our customers.", company: zapier, value_category: care)
value_3 = Value.create!(title: "High Standards", content: "We aim for excellence in everything we do and always go the extra mile for our customers.", company: zapier, value_category: ambition)
value_4 = Value.create!(title: "Simplicity", content: "Our product is simple to use for both contractors and clients. Simplicity always wins.", company: zapier, value_category: simplicity)
puts 'Finished values!'

puts 'Creating teams...'
hr = Team.create!(name: "Product", company: zapier)
product = Team.create!(name: "HR", company: zapier)
sales = Team.create!(name: "Sales", company: zapier)
design = Team.create!(name: "Design", company: zapier)
puts 'Finished teams!'


puts 'Creating hierarchy_ranks...'
head = HierarchyRank.create!(name: "Head", rank: 3)
senior = HierarchyRank.create!(name: "Senior", rank: 5)
junior = HierarchyRank.create!(name: "Junior", rank: 7)
puts 'Finished hierarchy_ranks!'

puts 'Creating users...'
emma = User.create!(email: "emma@example.com", password: "password", first_name: "Emma", last_name: "Bruno", company: zapier, team: hr, hierarchy_rank: head, location: "San Francisco", avatar: "https://thispersondoesnotexist.com/image")
louis = User.create!(email: "louis@example.com", password: "password", first_name: "Louis", last_name: "Uguen", company: zapier, team: product, hierarchy_rank: senior, onboarding_status: true, location: "Brest", avatar: "https://thispersondoesnotexist.com/image")
edouard = User.create!(email: "edouard@example.com", password: "password", first_name: "Edouard", last_name: "Uguen", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "Marseille", avatar: "https://thispersondoesnotexist.com/image")
arthur = User.create!(email: "arthur@example.com", password: "password", first_name: "Arthur", last_name: "Mariot", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Londres", avatar: "https://thispersondoesnotexist.com/image")
jeanne = User.create!(email: "jeanne@example.com", password: "password", first_name: "Jeanne", last_name: "Parrot", company: zapier, team: hr, hierarchy_rank: junior, location: "San Francisco", avatar: "https://thispersondoesnotexist.com/image")
marie = User.create!(email: "marie@example.com", password: "password", first_name: "Marie", last_name: "Pavet", company: zapier, team: sales, hierarchy_rank: junior, location: "San Francisco", avatar: "https://thispersondoesnotexist.com/image")
julien = User.create!(email: "julien@example.com", password: "password", first_name: "Julien", last_name: "Perrault", company: zapier, team: sales, hierarchy_rank: head, location: "San Francisco", avatar: "https://thispersondoesnotexist.com/image")

charles = User.create!(email: "charles@example.com", password: "password", first_name: "Charles", last_name: "Bruno", company: zapier, team: hr, hierarchy_rank: head, location: "Nantes", avatar: "https://thispersondoesnotexist.com/image")
jean = User.create!(email: "jean@example.com", password: "password", first_name: "Jean", last_name: "Uguen", company: zapier, team: product, hierarchy_rank: senior, onboarding_status: true, location: "Los Angeles", avatar: "https://thispersondoesnotexist.com/image")
marie = User.create!(email: "marie2@example.com", password: "password", first_name: "Marie", last_name: "Uguen", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "Miami", avatar: "https://thispersondoesnotexist.com/image")
bernard = User.create!(email: "bernard@example.com", password: "password", first_name: "Bernard", last_name: "Mariot", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Bordeaux", avatar: "https://thispersondoesnotexist.com/image")
brieux = User.create!(email: "brieux@example.com", password: "password", first_name: "Brieux", last_name: "Parrot", company: zapier, team: hr, hierarchy_rank: junior, location: "Naples", avatar: "https://thispersondoesnotexist.com/image")
catherine = User.create!(email: "catherine@example.com", password: "password", first_name: "Catherine", last_name: "Pavet", company: zapier, team: sales, hierarchy_rank: junior, location: "Rome", avatar: "https://thispersondoesnotexist.com/image")
christian = User.create!(email: "christian@example.com", password: "password", first_name: "Christian", last_name: "Perrault", company: zapier, team: sales, hierarchy_rank: head, location: "Barcelone", avatar: "https://thispersondoesnotexist.com/image")

claire = User.create!(email: "claire@example.com", password: "password", first_name: "Claire", last_name: "Bruno", company: zapier, team: hr, hierarchy_rank: head, location: "Barcelone", avatar: "https://thispersondoesnotexist.com/image")
lorenzo = User.create!(email: "lorenzo@example.com", password: "password", first_name: "Lorenzo", last_name: "Uguen", company: zapier, team: product, hierarchy_rank: senior, onboarding_status: true, location: "Madrid", avatar: "https://thispersondoesnotexist.com/image")
jacques = User.create!(email: "jacques@example.com", password: "password", first_name: "Jacques", last_name: "Uguen", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "New-York", avatar: "https://thispersondoesnotexist.com/image")
caroline = User.create!(email: "caroline@example.com", password: "password", first_name: "Caroline", last_name: "Mariot", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Oslo", avatar: "https://thispersondoesnotexist.com/image")
mesrine = User.create!(email: "mesrine@example.com", password: "password", first_name: "Mesrine", last_name: "Parrot", company: zapier, team: hr, hierarchy_rank: junior, location: "Bruxelles", avatar: "https://thispersondoesnotexist.com/image")
phillipe = User.create!(email: "phillipe@example.com", password: "password", first_name: "Phillipe", last_name: "Pavet", company: zapier, team: sales, hierarchy_rank: junior, location: "Paris", avatar: "https://thispersondoesnotexist.com/image")
briac = User.create!(email: "briac@example.com", password: "password", first_name: "Briac", last_name: "Perrault", company: zapier, team: sales, hierarchy_rank: head, location: "Lille", avatar: "https://thispersondoesnotexist.com/image")

marc = User.create!(email: "marc@example.com", password: "password", first_name: "Mcamillearc", last_name: "Bruno", company: zapier, team: hr, hierarchy_rank: head, location: "Londres", avatar: "https://thispersondoesnotexist.com/image")
camille = User.create!(email: "camille@example.com", password: "password", first_name: "Camille", last_name: "Uguen", company: zapier, team: product, hierarchy_rank: senior, onboarding_status: true, location: "Londres", avatar: "https://thispersondoesnotexist.com/image")
george = User.create!(email: "george@example.com", password: "password", first_name: "George", last_name: "Uguen", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "Dublin", avatar: "https://thispersondoesnotexist.com/image")
kevin = User.create!(email: "kevin@example.com", password: "password", first_name: "Kevin", last_name: "Mariot", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Dublin", avatar: "https://thispersondoesnotexist.com/image")
jeannus = User.create!(email: "jeannus@example.com", password: "password", first_name: "Jeannus", last_name: "Parrot", company: zapier, team: hr, hierarchy_rank: junior, location: "Dublin", avatar: "https://thispersondoesnotexist.com/image")
eric = User.create!(email: "eric@example.com", password: "password", first_name: "Eric", last_name: "Pavet", company: zapier, team: sales, hierarchy_rank: junior, location: "Londres", avatar: "https://thispersondoesnotexist.com/image")
mickael = User.create!(email: "mickael@example.com", password: "password", first_name: "Mickael", last_name: "Perrault", company: zapier, team: sales, hierarchy_rank: head, location: "Paris", avatar: "https://thispersondoesnotexist.com/image")
puts 'Finished users!'

