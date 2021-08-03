puts "🌱 Seeding spices..."

# Make 5 Companies
puts "Creating companies"
hopper_inc = Company.create(company_name: "Hopper Inc.", provide_insurance: true, paid_vacation_days: 28, entry_salary: 50000, max_salary: 75000)
fox_corp = Company.create(company_name: "Fox Corp.", provide_insurance: false, paid_vacation_days: 15, entry_salary: 65000, max_salary: 110000)
turing_inc = Company.create(company_name: "Turing Org.", provide_insurance: false, paid_vacation_days: 5, entry_salary: 76000, max_salary: 130000)
borg_inc = Company.create(company_name: "Borg Gov.", provide_insurance: true, paid_vacation_days: 12, entry_salary: 55000, max_salary: 99500)
monsters_inc = Company.create(company_name: "Monsters Inc.", provide_insurance: false, paid_vacation_days: 0, entry_salary: 70000, max_salary: 85000)

puts "Creating users"
user1 = User.create(company_id: hopper_inc.id, name: "Alice", username: "a_wonderland", password: "madhatter01", company_name: "Hopper Inc."  )
user2 = User.create(company_id: hopper_inc.id, name: "Susu", username: "laluna", password: "yehua93", company_name: "Hopper Inc."  )
user3 = User.create(company_id: fox_corp.id, name: "Kudzu", username: "canada_milk", password: "baggedmilk123", company_name: "Fox Corp."  )
user4 = User.create(company_id: fox_corp.id, name: "Alberto", username: "covfefe", password: "arabica100", company_name: "Fox Corp."  )
user5 = User.create(company_id: turing_inc.id, name: "Zenos", username: "Reaper", password: "vanbaelsar2", company_name: "Turing Org."  )
user6 = User.create(company_id: turing_inc.id, name: "Alphinaud", username: "Sage", password: "topaz321", company_name: "Turing Org."  )
user7 = User.create(company_id: borg_inc.id, name: "Emet", username: "Tempest", password: "newfounder00", company_name: "Borg Gov." )
user8 = User.create(company_id: borg_inc.id, name: "Vauthry", username: "sineater", password: "handsomeboy99", company_name: "Borg Gov." )
user9 = User.create(company_id: monsters_inc.id, name: "Sullivan", username: "james01", password: "kitty20", company_name: "Monsters Inc." )
user10 = User.create(company_id: monsters_inc.id, name: "Mike", username: "loverboy", password: "l0vecelia", company_name: "Monsters Inc." )


puts "✅ Done seeding!"
