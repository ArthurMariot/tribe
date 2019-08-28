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
trello = Company.create!(name: "Trello",
  country: "USA",
  city: "New-York",
  address: "55 Broadway",
  zipcode: "10006",
  phone_number: "+1 877-976-5813",
  activity: "Software",
  logo: "https://d2k1ftgv7pobq7.cloudfront.net/meta/u/res/images/brand-assets/Logos/0099ec3754bf473d2bbf317204ab6fea/trello-logo-blue.png",
  photo_header: "https://techcrunch.com/wp-content/uploads/2017/01/trello.jpeg?w=730&crop=1",
  photo_description: "https://cdn.builtinseattle.com/sites/www.builtinseattle.com/files/styles/ckeditor_optimize/public/inline-images/yapta-travel-company-seattle.jpg",
  twitter_url: "https://twitter.com/trello",
  linkedin_url: "https://fr.linkedin.com/company/trello",
  github_url: "https://github.com/trello",
  website_url: "https://trello.com",
  facebook_url: "https://www.facebook.com/trellofr/?brand_redir=180047058742759",
  short_description: "Now part of the Atlassian family, Team Trello is headquartered in New York City and distributed all over the world. We embrace a remote-working culture that has helped us to build an amazing product that fits the needs of modern knowledge workers, super-organized parents, and efficient project planners alike. Before joining Atlassian, Trello had already built a values-driven culture that remains alive and well today. Coupled with Atlassian, there are even more opportunities to make a lasting global impact as part of this growing team.",
  mission: "Change the way teams work together",
  history: "Trello was released at a TechCrunch event by Fog Creek founder Joel Spolsky. Wired magazine named the application in September 2011 one of The 7 Coolest Startups You Haven't Heard of Yet. Lifehacker said it makes project collaboration simple and kind of enjoyable. In 2014, it raised $10.3 million in funding from Index Ventures and Spark Capital. In May 2016, Trello claimed it had more than 1.1 million daily active users and 14 million total signups.")

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
value_1 = Value.create!(title: "People First", content: "We strive to build products that empower people to work together no matter where they are.", company: trello, value_category: people)
value_2 = Value.create!(title: "Care", content: "We aspire to be generous and thoughtful in every interaction with each other and our customers.", company: trello, value_category: care)
value_3 = Value.create!(title: "High Standards", content: "We aim for excellence in everything we do and always go the extra mile for our customers.", company: trello, value_category: ambition)
value_4 = Value.create!(title: "Simplicity", content: "Our product is simple to use for both contractors and clients. Simplicity always wins.", company: trello, value_category: simplicity)
puts 'Finished values!'

puts 'Creating teams...'
hr = Team.create!(name: "Product", company: trello)
product = Team.create!(name: "HR", company: trello)
engineering = Team.create!(name: "Engineering", company: trello)
sales = Team.create!(name: "Sales", company: trello)
design = Team.create!(name: "Design", company: trello)
marketing = Team.create!(name: "Marketing", company: trello)
puts 'Finished teams!'


"https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf"
puts 'Creating hierarchy_ranks...'
head = HierarchyRank.create!(name: "Head", rank: 3)
senior = HierarchyRank.create!(name: "Senior", rank: 5)
junior = HierarchyRank.create!(name: "Junior", rank: 7)
puts 'Finished hierarchy_ranks!'

puts 'Creating users...'


#Team PRODUCT
taylor = User.create!(email: "taylor@trello.com", password: "password", first_name: "Taylor", last_name: "White", company: trello, team: product, hierarchy_rank: senior, onboarding_status: false, location: "Los Angeles", remote_avatar_url: "https://hooshmand.net/content/images/size/w600/2018/11/Dana---Profile-1-mammoth.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Baseball", hobby_2: "Swimming", hobby_3: "Music", job_title: "Product Manager", description: "I love to travel and working in the same time. My remote work allows me to discover new people and culture all te time. It's really important for me to have some freedom in my job and private life.")
charlie = User.create!(email: "charlie@trello.com", password: "password", first_name: "Charlie", last_name: "Dubois", company: trello, team: product, hierarchy_rank: junior, onboarding_status: false, location: "Dublin", remote_avatar_url: "https://media.www.kent.ac.uk/se/1785/profile.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Folks", hobby_2: "Sneakers", hobby_3: "Yoga", job_title: "Product Owner", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")
camille = User.create!(email: "camille@trello.com", password: "password", first_name: "Camille", last_name: "Smith", company: trello, team: product, hierarchy_rank: senior, onboarding_status: false, location: "Vancouver", remote_avatar_url: "https://www2.deloitte.com/content/dam/Deloitte/us/Images/promo_images/profile-pictures/us-hannah-roth.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Acid Jazz", hobby_2: "Starwars", hobby_3: "Sean Connery", job_title: "Head of Product", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")
caroline = User.create!(email: "caroline@trello.com", password: "password", first_name: "Caroline", last_name: "Mariot", company: trello, team: product, hierarchy_rank: junior, onboarding_status: false, location: "Oslo", remote_avatar_url: "https://startupxplore.com/uploads/ff8080815bc3a76a015bda53e12209e5-large.png", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Tennis", hobby_2: "Karate", hobby_3: "Paris", job_title: "Lead Product Manager", description: "Contact me so we can have a meet!  I am currently thinking about going around Asia for 1 year next to my work. If you would like to join me, I would be more than happy to share this experience.")
jean = User.create!(email: "jean@trello.com", password: "password", first_name: "Jean", last_name: "Prevert", company: trello, team: product, hierarchy_rank: senior, onboarding_status: false, location: "Lens", remote_avatar_url: "https://voxxedromania.ams3.cdn.digitaloceanspaces.com/2019VDBUH/speakers/doug-sillars-700.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Tennis", hobby_2: "Swimming", hobby_3: "Pets", job_title: "Product Owner", description: "I am characterized as a very sociable person. I am always looking for new adventures and people to meet. I don't like the routine, I like it when it moves and take it as it goes!")


#Team SALES
christian = User.create!(email: "christian@trello.com", password: "password", first_name: "Christian", last_name: "Perault", company: trello, team: sales, hierarchy_rank: head, location: "Barcelone", remote_avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyTHbj_pyLUf5-_n0keXQD-KbsPUhvTYrj62bvJ93pQAvnBjC3", hobby_1: "Madonna", hobby_2: "Painting", hobby_3: "Coding", job_title: "Business Developer", description: "I love to travel and working in the same time. My remote work allows me to discover new people and culture all te time. It's really important for me to have some freedom in my job and private life.")
phillipe = User.create!(email: "phillipe@trello.com", password: "password", first_name: "Phillipe", last_name: "Durant", company: trello, team: sales, hierarchy_rank: junior, location: "Paris", remote_avatar_url: "http://www.leisureopportunities.com/images/imagesX/462796_184061.jpg", hobby_1: "Opera", hobby_2: "Barcelona", hobby_3: "Dogs", job_title: "Sales manager", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")
briac = User.create!(email: "briac@trello.com", password: "password", first_name: "Briac", last_name: "Martin", company: trello, team: sales, hierarchy_rank: head, location: "Lisbone", remote_avatar_url: "https://www.conscious.co.uk/cms/photo/people/nathan_robinsonprofilecomingsoon.JPG", hobby_1: "Elvis Presley", hobby_2: "Tennis", hobby_3: "Cooking", job_title: "Sales Development Representative", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")
mickael = User.create!(email: "mickael@trello.com", password: "password", first_name: "Mickael", last_name: "LeGall", company: trello, team: sales, hierarchy_rank: head, location: "Melbourne", remote_avatar_url: "https://i.mdel.net/i/db/2018/11/1025761/1025761-500w.jpg", hobby_1: "Koto", hobby_2: "Sumo", hobby_3: "Miyazaki", job_title: "Account Manager", description: "Contact me so we can have a meet!  I am currently thinking about going around Asia for 1 year next to my work. If you would like to join me, I would be more than happy to share this experience.")
catherine = User.create!(email: "catherine@trello.com", password: "password", first_name: "Catherine", last_name: "Pavet", company: trello, team: sales, hierarchy_rank: junior, location: "Chengdu", remote_avatar_url: "http://www.hci.org/files/imagecache/spkr_profile_imagecrop/field_spkr_featured_photo/lauren%20bidwell.png", hobby_1: "Tennis", hobby_2: "Singing", hobby_3: "Elephants", job_title: "Sales Ops")
jack = User.create!(email: "jack@trello.com", password: "password", first_name: "Jack", last_name: "Nelson", company: trello, team: sales, hierarchy_rank: junior, location: "Budapest", remote_avatar_url: "https://s3.amazonaws.com/f6s-public/profiles/1444541_original.jpg", hobby_1: "Travel", hobby_2: "Singing", hobby_3: "Bowling", job_title: "Sales Ops", description: "I am characterized as a very sociable person. I am always looking for new adventures and people to meet. I don't like the routine, I like it when it moves and take it as it goes!")


#Team ENGINEERING
julien = User.create!(email: "julien@trello.com", password: "password", first_name: "Julien", last_name: "Leguen", company: trello, team: engineering, hierarchy_rank: head, location: "San Francisco", remote_avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VJoMjKiEHU0v2LGEwp_tENAXtmLeLctr9cFoNsNn0LkuuZZf", hobby_1: "Heavy Metal", hobby_2: "Swimming", hobby_3: "Judo", job_title: "Head of engineering", description: "I love to travel and working in the same time. My remote work allows me to discover new people and culture all te time. It's really important for me to have some freedom in my job and private life.")
eric = User.create!(email: "eric@trello.com", password: "password", first_name: "Eric", last_name: "Gratia", company: trello, team: engineering, hierarchy_rank: junior, location: "Londres", remote_avatar_url: "https://www.mskpatents.com/wp-content/uploads/2018/06/MSK-people-profile-matthew-thm.jpg", hobby_1: "French bashing", hobby_2: "Rugby", hobby_3: "Pudding", job_title: "Fullstack developer", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")
john = User.create!(email: "john@trello.com", password: "password", first_name: "John", last_name: "Allen", company: trello, team: engineering, hierarchy_rank: junior, location: "Ottawa", remote_avatar_url: "https://photos2.spareroom.co.uk/images/flatshare/listings/large/39/22/39225421.jpg", hobby_1: "Coding", hobby_2: "Graphic design", hobby_3: "Basketball", job_title: "Back-end developer", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")


#Team DESIGN
jacques = User.create!(email: "jacques@trello.com", password: "password", first_name: "Jacques", last_name: "Berger", company: trello, team: design, hierarchy_rank: junior, onboarding_status: false, location: "New-York", remote_avatar_url: "https://d3qi0qp55mx5f5.cloudfront.net/computerscience/i/people/5X0A0284.JPG-resize.jpg?mtime=1547753062", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Stamps", hobby_2: "Beers", hobby_3: "Karaoke", job_title: "Lead UX designer ", description: "Contact me so we can have a meet!  I am currently thinking about going around Asia for 1 year next to my work. If you would like to join me, I would be more than happy to share this experience.")
george = User.create!(email: "george@trello.com", password: "password", first_name: "George", last_name: "Pavot", company: trello, team: design, hierarchy_rank: junior, onboarding_status: false, location: "Sidney", remote_avatar_url: "https://productcamp.pl/wp-content/uploads/bfi_thumb/speaker_scholz-o2tnzblym5o8touf1ela8d3wo7j3novp3o261l546o.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.total.com/sites/default/files/atoms/files/total_code_of_conduct_va_0.pdf", hobby_1: "Hunting", hobby_2: "Archeology", hobby_3: "Longboarding", job_title: "UX designer", description: "I am characterized as a very sociable person. I am always looking for new adventures and people to meet. I don't like the routine, I like it when it moves and take it as it goes!")
joyce = User.create!(email: "joyce@trello.com", password: "password", first_name: "Marie", last_name: "Cooper", company: trello, team: design, hierarchy_rank: junior, onboarding_status: false, location: "Rio de Janeiro", remote_avatar_url: "http://kingsettcapital.com/assets/staff/Jenna-Larman-WEB-ready-Kingsett.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Diving", hobby_2: "Swimming", hobby_3: "Martial arts", job_title: "UI designer", description: "I love to travel and working in the same time. My remote work allows me to discover new people and culture all te time. It's really important for me to have some freedom in my job and private life.")


#Team MARKETING
steven = User.create!(email: "steven@trello.com", password: "password", first_name: "Steven", last_name: "Peterson", company: trello, team: hr, hierarchy_rank: head, location: "Le Cap", remote_avatar_url: "https://www.netzpiloten.de/wp-content/uploads/2019/02/katsche_800x800.jpg", hobby_1: "Surfing", hobby_2: "Golf", hobby_3: "Reading", job_title: "Head of Marketing", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")
amanda = User.create!(email: "amanda@trello.com", password: "password", first_name: "Amanda", last_name: "Morris", company: trello, team: hr, hierarchy_rank: head, location: "Quebec", remote_avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD3M2uyU3WJu6mmxQRR8GNzKWpI5UlcU4Gyxx__hczGKGnfkpPaQ", hobby_1: "Scouting", hobby_2: "ESports", hobby_3: "Squash", job_title: "Product Marketing", description: "I'm a very curious person. I love learning new things. I am currently travelling around the world with my family (I have two little girls). We'll probably meet on my way, see you soon!")
emma = User.create!(email: "emma@trello.com", password: "password", first_name: "Emma", last_name: "Dilson", company: trello, team: hr, hierarchy_rank: junior, location: "Bali", remote_avatar_url: "https://www.vincentburgers.com/wp-content/uploads/makeup-artist-62.jpg", hobby_1: "Fitness", hobby_2: "Games", hobby_3: "Fishing", job_title: "Marketing & Communication", description: "Contact me so we can have a meet!  I am currently thinking about going around Asia for 1 year next to my work. If you would like to join me, I would be more than happy to share this experience.")

#Team HR
louis = User.create!(email: "louis@trello.com", password: "password", first_name: "Louis", last_name: "Uguen", company: trello, team: hr, hierarchy_rank: head, location: "Le Cap", remote_avatar_url: "https://i.ibb.co/5R3dMRr/louis-uguen.jpg", hobby_1: "Tennis", hobby_2: "Electro", hobby_3: "Travel", job_title: "HR manager")
marc = User.create!(email: "marc@trello.com", password: "password", first_name: "Marc", last_name: "Bruno", company: trello, team: hr, hierarchy_rank: head, location: "Londres", remote_avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiqKtJvla4mLiyEVFgSZxrQ0FlZkj3vEwyFjI8mv_A_Tl6sWA4", hobby_1: "Musicals", hobby_2: "Fine Arts", hobby_3: "Cats", job_title: "People Manager", description: "I am characterized as a very sociable person. I am always looking for new adventures and people to meet. I don't like the routine, I like it when it moves and take it as it goes!")
charles = User.create!(email: "charles@trello.com", password: "password", first_name: "Charles", last_name: "Bruno", company: trello, team: hr, hierarchy_rank: head, location: "Dakar", remote_avatar_url: "http://www.response.org.uk/wp-content/uploads/2016/10/Response_Profile_Image_Male-Staff3-01_Oct16.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Wine", hobby_2: "Climbing", hobby_3: "History", job_title: "HR recruiter", description: "I love to travel and working in the same time. My remote work allows me to discover new people and culture all te time. It's really important for me to have some freedom in my job and private life.")
brieux = User.create!(email: "brieux@trello.com", password: "password", first_name: "Brieux", last_name: "Gonzales", company: trello, team: hr, hierarchy_rank: junior, location: "Nagpur", remote_avatar_url: "https://valsplat.nl/media/valsplatters/bjorn-post.jpg", hobby_1: "Surfing", hobby_2: "Fishing", hobby_3: "Mythology", job_title: "Hapiness Manager")
karin = User.create!(email: "karin@trello.com", password: "password", first_name: "Karin", last_name: "Charles", company: trello, team: hr, hierarchy_rank: junior, location: "Bali", remote_avatar_url: "https://i1.wp.com/davehakkens.nl/wp-content/uploads/avatars/75465/5c26dbd1a735e-bpfull.png?resize=600%2C600&ssl=1", hobby_1: "Fitness", hobby_2: "Video games", hobby_3: "Beach", job_title: "Onboarding Manager")
claire = User.create!(email: "claire@trello.com", password: "password", first_name: "Claire", last_name: "Gonzales", company: trello, team: hr, hierarchy_rank: head, location: "Barcelone", remote_avatar_url: "http://events-ecsel.eu/images/1c05f13460c399e6510587ddbfe7e9ba.jpg", hobby_1: "Edita Gruberova", hobby_2: "Basket Ball", hobby_3: "Spain", job_title: "Talent Manager")


# Current onboardings
edouard = User.create!(email: "edouard@trello.com", password: "password", first_name: "Edouard", last_name: "Uguen", company: trello, team: design, hierarchy_rank: junior, onboarding_status: true, buddy: caroline.id, location: "Marseille", remote_avatar_url: "https://d3qi0qp55mx5f5.cloudfront.net/computerscience/i/people/gordon-headshot.jpeg?mtime=1560268963", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://www.ivpc.com/docs/regEng.pdf", hobby_1: "Archeology", hobby_2: "Egypt", hobby_3: "Pets", job_title: "Product Design", arrival_at: "August 29th" )
benjamin = User.create!(email: "benjamin@trello.com", password: "password", first_name: "Benjamin", last_name: "Pelletier", company: trello, team: marketing, hierarchy_rank: junior, onboarding_status: true, buddy: marc.id, location: "Madrid", remote_avatar_url: "https://www.microsoft.com/en-us/research/uploads/prod/2019/08/profile_vsmall.jpg", remote_contract_pdf_url: "https://www.simplybusiness.co.uk/media/legal-documents/downloads/pdf/contract-of-employment-template-free-download.pdf", remote_rules_reglementation_pdf_url: "https://lakareutangranser.se/sites/default/files/msf_internal_rules_a5_final_jan_12.pdf", hobby_1: "Biking", hobby_2: "Cats", hobby_3: "Jazz", job_title: "Marketing manager", arrival_at: "August 30th")
marie = User.create!(email: "marie@trello.com", password: "password", first_name: "Marie", last_name: "Rousseau", company: trello, team: engineering, hierarchy_rank: junior, location: "Tokyo", remote_avatar_url: "http://adt4apps.msudenver.edu/media/content/marketingandcommunications/images/Nguyen,-Mai-Linh_7944_160330-8x5.5cc.jpg", hobby_1: "", hobby_2: "", hobby_3: "", job_title: "Front-end Developer", onboarding_status: true, buddy: brieux.id, arrival_at: "August 23th")
jeanne = User.create!(email: "jeanne@trello.com", password: "password", first_name: "Jeanne", last_name: "Brooks", company: trello, team: hr, hierarchy_rank: junior, location: "Berlin", remote_avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCR-gliPMfstdnjoAqCkFq-PM2W6kfuf8y_gtAFySXnTHTnZjs", hobby_1: "", hobby_2: "", hobby_3: "", job_title: "People Manager", onboarding_status: true, buddy: claire.id, arrival_at: "August 27th")
jade = User.create!(email: "jade@trello.com", password: "password", first_name: "Jade", last_name: "Grey", company: trello, team: engineering, hierarchy_rank: junior, location: "Santiago", remote_avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1WthMGaWm4KHwa2vZMT2Cu5aMBNjP-2fWXsANXK0aL_4oo8SV", hobby_1: "Sailing", hobby_2: "Polo", hobby_3: "Reading", job_title: "Tech Analyst", onboarding_status: true, buddy: julien.id, arrival_at: "August 28th")



puts 'Finished users!'

taylor.updatetimezone
sleep 2
puts 'timezone'
charlie.updatetimezone
sleep 2
puts 'timezone'
camille.updatetimezone
sleep 2
puts 'timezone'
caroline.updatetimezone
sleep 2
puts 'timezone'
jean.updatetimezone
sleep 2
puts 'timezone'
christian.updatetimezone
sleep 2
puts 'timezone'
phillipe.updatetimezone
sleep 2
puts 'timezone'
briac.updatetimezone
sleep 2
puts 'timezone'
mickael.updatetimezone
sleep 2
puts 'timezone'
catherine.updatetimezone
sleep 2
puts 'timezone'
jack.updatetimezone
sleep 2
puts 'timezone'
julien.updatetimezone
sleep 2
puts 'timezone'
eric.updatetimezone
sleep 2
puts 'timezone'
john.updatetimezone
sleep 2
puts 'timezone'
jacques.updatetimezone
sleep 2
puts 'timezone'
george.updatetimezone
sleep 2
puts 'timezone'
joyce.updatetimezone
sleep 2
puts 'timezone'
steven.updatetimezone
sleep 2
puts 'timezone'
amanda.updatetimezone
sleep 2
puts 'timezone'
emma.updatetimezone
sleep 2
puts 'timezone'
louis.updatetimezone
sleep 2
puts 'timezone'
marc.updatetimezone
sleep 2
puts 'timezone'
charles.updatetimezone
sleep 2
puts 'timezone'
brieux.updatetimezone
sleep 2
puts 'timezone'
karin.updatetimezone
sleep 2
puts 'timezone'
claire.updatetimezone
sleep 2
puts 'timezone'
edouard.updatetimezone
sleep 2
puts 'timezone'
benjamin.updatetimezone
sleep 2
puts 'timezone'
marie.updatetimezone
sleep 2
puts 'timezone'
jeanne.updatetimezone
sleep 2
puts 'timezone'
jade.updatetimezone
puts 'timezone'

# taylor.save
# charlie.save
# camille.save
# caroline.save
# jean.save
# christian.save
# phillipe.save
# briac.save
# mickael.save
# catherine.save
# jack.save
# julien.save
# eric.save
# john.save
# jacques.save
# george.save
# joyce.save
# steven.save
# amanda.save
# emma.save
# louis.save
# marc.save
# charles.save
# brieux.save
# karin.save
# claire.save
# edouard.save
# benjamin.save
# marie.save
# jeanne.save
# jade.save

