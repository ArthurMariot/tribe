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
ambition = ValueCategory.create!(name: "Ambition", picto_url: "https://www.letsdeel.com/e6ba885ab3a3c52974c1dd57a0b71cdc.png")
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


"https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf"
puts 'Creating hierarchy_ranks...'
head = HierarchyRank.create!(name: "Head", rank: 3)
senior = HierarchyRank.create!(name: "Senior", rank: 5)
junior = HierarchyRank.create!(name: "Junior", rank: 7)
puts 'Finished hierarchy_ranks!'

puts 'Creating users...'
louis = User.create!(email: "louis@zapier.com", password: "password", first_name: "Louis", last_name: "Uguen", company: zapier, team: hr, hierarchy_rank: head, location: "Bordeaux", remote_avatar_url: "https://i.ibb.co/5R3dMRr/louis-uguen.jpg", hobby_1: "Tennis", hobby_2: "Electro", hobby_3: "Travel", job_title: "HR manager")
edouard = User.create!(email: "edouard@zapier.com", password: "password", first_name: "Edouard", last_name: "Uguen", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "Marseille", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.ivpc.com/docs/regEng.pdf", hobby_1: "Archeology", hobby_2: "Egypt", hobby_3: "Pets", job_title: "Sales manager")
arthur = User.create!(email: "arthur@zapier.com", password: "password", first_name: "Arthur", last_name: "Mariot", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Londres", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.ivpc.com/docs/regEng.pdf", hobby_1: "Opera", hobby_2: "Soccer", hobby_3: "Cheese", job_title: "UX designer")
jeanne = User.create!(email: "jeanne@zapier.com", password: "password", first_name: "Jeanne", last_name: "Katia", company: zapier, team: hr, hierarchy_rank: junior, location: "Berlin", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Swimming", hobby_2: "Snake", hobby_3: "History", job_title: "HR Director")
marie = User.create!(email: "marie@zapier.com", password: "password", first_name: "Marie", last_name: "Rousseau", company: zapier, team: sales, hierarchy_rank: junior, location: "Tokyo", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Classical music", hobby_2: "Soccer", hobby_3: "Fashion", job_title: "Pre-sales engineer")
julien = User.create!(email: "julien@zapier.com", password: "password", first_name: "Julien", last_name: "Perrault", company: zapier, team: sales, hierarchy_rank: head, location: "San Francisco", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Heavy Metal", hobby_2: "Swimming", hobby_3: "Judo", job_title: "B2B sales leader")

charles = User.create!(email: "charles@zapier.com", password: "password", first_name: "Charles", last_name: "Bruno", company: zapier, team: hr, hierarchy_rank: head, location: "Nantes", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Wine", hobby_2: "Climbing", hobby_3: "History", job_title: "Skills hunter")
jean = User.create!(email: "jean@zapier.com", password: "password", first_name: "Jean", last_name: "Prevert", company: zapier, team: product, hierarchy_rank: senior, onboarding_status: true, location: "Los Angeles", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Tennis", hobby_2: "Swimming", hobby_3: "Pets", job_title: "Growth hacker")
marie = User.create!(email: "marie2@zapier.com", password: "password", first_name: "Marie", last_name: "Dicaprio", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "Miami", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Diving", hobby_2: "Swimming", hobby_3: "Architecture", job_title: "UX designer")
bernard = User.create!(email: "bernard@zapier.com", password: "password", first_name: "Bernard", last_name: "Mariot", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Madrid", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Biking", hobby_2: "Cats", hobby_3: "Jazz", job_title: "Marketing manager")
brieux = User.create!(email: "brieux@zapier.com", password: "password", first_name: "Brieux", last_name: "Gonzales", company: zapier, team: hr, hierarchy_rank: junior, location: "Naples", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Surf", hobby_2: "Fishing", hobby_3: "Mythology", job_title: "HR manager")
catherine = User.create!(email: "catherine@zapier.com", password: "password", first_name: "Catherine", last_name: "Pavet", company: zapier, team: sales, hierarchy_rank: junior, location: "Rome", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Tennis", hobby_2: "Singing", hobby_3: "Elephants", job_title: "Growth hacker")
christian = User.create!(email: "christian@zapier.com", password: "password", first_name: "Christian", last_name: "Perrault", company: zapier, team: sales, hierarchy_rank: head, location: "Barcelone", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Madonna", hobby_2: "Painting", hobby_3: "Coding", job_title: "Data analyst")

claire = User.create!(email: "claire@zapier.com", password: "password", first_name: "Claire", last_name: "Gonzales", company: zapier, team: hr, hierarchy_rank: head, location: "Barcelone", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Edita Gruberova", hobby_2: "Basket Ball", hobby_3: "Spain", job_title: "Product manager")
lorenzo = User.create!(email: "lorenzo@zapier.com", password: "password", first_name: "Lorenzo", last_name: "Sicre", company: zapier, team: product, hierarchy_rank: senior, onboarding_status: true, location: "Madrid", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Dance", hobby_2: "Wine", hobby_3: "Turtles", job_title: "Product owner")
jacques = User.create!(email: "jacques@zapier.com", password: "password", first_name: "Jacques", last_name: "Berger", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "New-York", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Stamps", hobby_2: "Beers", hobby_3: "Karaoke", job_title: "Lead UX designer ")
caroline = User.create!(email: "caroline@zapier.com", password: "password", first_name: "Caroline", last_name: "Mariot", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Oslo", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Tennis", hobby_2: "Karate", hobby_3: "Paris", job_title: "Product manager")
mesrine = User.create!(email: "mesrine@zapier.com", password: "password", first_name: "Mesrine", last_name: "Parrot", company: zapier, team: hr, hierarchy_rank: junior, location: "Bruxelles", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Tennis", hobby_2: "Karate", hobby_3: "Paris", job_title: "Senior HR manager")
phillipe = User.create!(email: "phillipe@zapier.com", password: "password", first_name: "Phillipe", last_name: "Durant", company: zapier, team: sales, hierarchy_rank: junior, location: "Paris", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Opera", hobby_2: "Barcelona", hobby_3: "Dogs", job_title: "Sales manager")
briac = User.create!(email: "briac@zapier.com", password: "password", first_name: "Briac", last_name: "Martin", company: zapier, team: sales, hierarchy_rank: head, location: "Lisbone", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Elvis Presley", hobby_2: "Tennis", hobby_3: "Cooking", job_title: "People manager")
zapier
marc = User.create!(email: "marc@zapier.com", password: "password", first_name: "Mcamillearc", last_name: "Bruno", company: zapier, team: hr, hierarchy_rank: head, location: "Londres", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Musicals", hobby_2: "Fine Arts", hobby_3: "Cats", job_title: "Fullstack developer")
camille = User.create!(email: "camille@zapier.com", password: "password", first_name: "Camille", last_name: "Uguen", company: zapier, team: product, hierarchy_rank: senior, onboarding_status: true, location: "Londres", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Acid Jazz", hobby_2: "Starwars", hobby_3: "Sean Connery", job_title: "Europe & EMEA director")
george = User.create!(email: "george@zapier.com", password: "password", first_name: "George", last_name: "Pavot", company: zapier, team: design, hierarchy_rank: junior, onboarding_status: true, location: "Dublin", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Hunting", hobby_2: "Archeology", hobby_3: "Chocolate", job_title: "UX designer")
kevin = User.create!(email: "kevin@zapier.com", password: "password", first_name: "Kevin", last_name: "Dubois", company: zapier, team: product, hierarchy_rank: junior, onboarding_status: true, location: "Dublin", remote_avatar_url: "https://thispersondoesnotexist.com/image", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Folks", hobby_2: "Shoes", hobby_3: "Impressionnism", job_title: "Product owner")
jeannus = User.create!(email: "jeannus@zapier.com", password: "password", first_name: "Jeannus", last_name: "Charle", company: zapier, team: hr, hierarchy_rank: junior, location: "Dublin", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Fitness", hobby_2: "Video games", hobby_3: "Ties", job_title: "HR assistant")
eric = User.create!(email: "eric@zapier.com", password: "password", first_name: "Eric", last_name: "Gratia", company: zapier, team: sales, hierarchy_rank: junior, location: "Londres", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "French bashing", hobby_2: "Rugby", hobby_3: "Pudding", job_title: "Product manager")
mickael = User.create!(email: "mickael@zapier.com", password: "password", first_name: "Mickael", last_name: "LeGall", company: zapier, team: sales, hierarchy_rank: head, location: "Paris", remote_avatar_url: "https://thispersondoesnotexist.com/image", hobby_1: "Koto", hobby_2: "Sumo", hobby_3: "Miyazaki", job_title: "Product manager")
puts 'Finished users!'

