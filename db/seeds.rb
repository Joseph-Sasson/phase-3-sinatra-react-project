puts "Deleting company/user data..."
Company.destroy_all
User.destroy_all


puts "Creating companies..."
flatiron = Company.create(company_name: "Flatiron")
disney = Company.create(company_name: "Disney")
dc = Company.create(company_name: "DC Comics")
marvel = Company.create(company_name: "Marvel")
swim = Company.create(company_name: "AdultSwim")
monsters = Company.create(company_name: "Monsters Inc")
test1 = Company.create(company_name: "Test")

puts "Creating users..."

jami= User.create(company_id: flatiron.id, name: "Jami Sheumaker", username: "jamers224", password:"flatiron1234" , company_name: "Flatiron", email: "jamers224@gmail.com" )
user1 = User.create(company_id: disney.id, name: "Alice", username: "a_wonderland", password: "madhatter1", company_name: "Disney", email: 'alice@wonderland.com')
user2 = User.create(company_id: disney.id, name: "Rabbit", username: "white_rabbit", password: "white1", company_name: "Disney", email: 'rabbit@wonderland.com')
user3 = User.create(company_id: dc.id, name: "Barry Allen", username: "the_flash", password: "starlabs1", company_name: "DC Comics", email: 'flash@dccomics.com')
user4 = User.create(company_id: dc.id, name: "Clark Kent", username: "superman", password: "krypton1", company_name: "DC Comics", email: 'superman@dccomics.com')
user5 = User.create(company_id: marvel.id, name: "Tony Stark", username: "iron_man", password: "jarvis1", company_name: "Marvel", email: 'ironman@marvel.com')
user6 = User.create(company_id: marvel.id, name: "Peter Parker", username: "spiderman", password: "mj1", company_name: "Marvel", email: 'spiderman@marvel.com')
user7 = User.create(company_id: swim.id, name: "Rick Sanchez", username: "pickle_rick", password: "beth1", company_name: "AdultSwim", email: 'rick@adultswim.com')
user8 = User.create(company_id: swim.id, name: "Morty Smith", username: "get_schwifty", password: "jessica1", company_name: "AdultSwim", email: 'morty@adultswim.com')
user9 = User.create(company_id: monsters.id, name: "James P. Sullivan", username: "sully", password: "scare1", company_name: "Monsters Inc", email: 'sully@monstersinc.com')
user10 = User.create(company_id: monsters.id, name: "Mike Wazowski", username: "one_eye_mike", password: "celia1", company_name: "Monsters Inc", email: 'mike@montersinc.com')
user11 = User.create(company_id: test1.id, name: "Test", username: "test", password: "test1", company_name: "Test", email: 'test@test.com')


puts "✅ Done seeding!"
