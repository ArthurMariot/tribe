Company.destroy_all
puts 'Cleaning database... company'

Team.destroy_all
puts 'Cleaning database...team'

User.destroy_all
puts 'Cleaning database...user'


HierarchyRank.destroy_all
puts 'Cleaning database...hierarchy_ranks'

puts 'Creating companies...'
zapier = Company.create!(name: "Zapier")
puts 'Finished companies!'

puts 'Creating teams...'
hr = Team.create!(name: "Product", company: zapier)
product = Team.create!(name: "HR", company: zapier)
puts 'Finished teams!'


puts 'Creating hierarchy_ranks...'
head = HierarchyRank.create!(name: "Head", rank: 3)
senior = HierarchyRank.create!(name: "Senior", rank: 5)
puts 'Finished hierarchy_ranks!'

puts 'Creating users...'
emma = User.create!(email: "emma@example.com", password: "password", first_name: "Emma", last_name: "Bruno", company: zapier, team: hr, hierarchy_rank: head)
louis = User.create!(email: "louis@example.com", password: "password", first_name: "Louis", last_name: "Uguen", company: zapier, team: product, hierarchy_rank: senior)
puts 'Finished users!'




