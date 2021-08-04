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
test = Company.create(company_name: "Test")

puts "Creating users"
user1 = User.create(company_id: disney.id, name: "Alice", username: "a_wonderland", password: "madhatter1", email: 'alice@wonderland.com')
user2 = User.create(company_id: disney.id, name: "Rabbit", username: "white_rabbit", password: "white1", email: 'rabbit@wonderland.com')
user3 = User.create(company_id: dc.id, name: "Barry Allen", username: "the_flash", password: "starlabs1", email: 'flash@dccomics.com')
user4 = User.create(company_id: dc.id, name: "Clark Kent", username: "superman", password: "krypton1", email: 'superman@dccomics.com')
user5 = User.create(company_id: marvel.id, name: "Tony Stark", username: "iron_man", password: "jarvis1", email: 'ironman@marvel.com')
user6 = User.create(company_id: marvel.id, name: "Peter Parker", username: "spiderman", password: "mj1", email: 'spiderman@marvel.com')
user7 = User.create(company_id: swim.id, name: "Rick Sanchez", username: "pickle_rick", password: "beth1", email: 'rick@adultswim.com')
user8 = User.create(company_id: swim.id, name: "Morty Smith", username: "get_schwifty", password: "jessica1", email: 'morty@adultswim.com')
user9 = User.create(company_id: monsters.id, name: "James P. Sullivan", username: "sully", password: "scare1", email: 'sully@monstersinc.com')
user10 = User.create(company_id: monsters.id, name: "Mike Wazowski", username: "one_eye_mike", password: "celia1", email: 'mike@montersinc.com')
user11 = User.create(company_id: test.id, name: "Test", username: "test", password: "test1", email: 'test@test.com')

puts "✅ Done seeding!"
