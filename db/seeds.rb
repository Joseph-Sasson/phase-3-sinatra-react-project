Company.destroy_all
User.destroy_all

puts "🌱 Seeding spices..."

# Make 5 Companies
puts "Creating companies"
disney = Company.create(company_name: "Disney")
dc = Company.create(company_name: "DC Comics")
marvel = Company.create(company_name: "Marvel")
swim = Company.create(company_name: "AdultSwim")
monsters = Company.create(company_name: "Monsters Inc")

puts "Creating users"
user1 = User.create(company_id: disney.id, name: "Alice", username: "a_wonderland", password: "madhatter1", company_name: "Disney", email: 'alice@wonderland.com')
user2 = User.create(company_id: disney.id, name: "Rabbit", username: "white_rabbit", password: "white1", company_name: "Disney", email: 'rabbit@wonderland.com')
user3 = User.create(company_id: dc.id, name: "Barry Allen", username: "the_flash", password: "starlabs1", company_name: "DC Comics", email: 'flash@dccomics.com')
user4 = User.create(company_id: dc.id, name: "Clark Kent", username: "superman", password: "krypton1", company_name: "DC Comics", email: 'superman@dccomics.com')
user5 = User.create(company_id: marvel.id, name: "Tony Stark", username: "iron_man", password: "jarvis1", company_name: "Marvel", email: 'ironman@marvel.com')
user6 = User.create(company_id: marvel.id, name: "Peter Parker", username: "spiderman", password: "mj1", company_name: "Marvel", email: 'spiderman@marvel.com')
user7 = User.create(company_id: swim.id, name: "Rick Sanchez", username: "pickle_rick", password: "beth1", company_name: "AdultSwim", email: 'rick@adultswim.com')
user8 = User.create(company_id: swim.id, name: "Morty Smith", username: "get_schwifty", password: "jessica1", company_name: "AdultSwim", email: 'morty@adultswim.com')
user9 = User.create(company_id: monsters.id, name: "James P. Sullivan", username: "sully", password: "scare1", company_name: "Monsters Inc", email: 'sully@monsterinc.com')
user10 = User.create(company_id: monsters.id, name: "Mike Wazowski", username: "one_eye_mike", password: "celia1", company_name: "Monsters Inc", email: 'mike@montersinc.com')

puts "✅ Done seeding!"
