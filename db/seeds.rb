# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Breed.create([
	{name: 'Bulldog Francês'},
	{name: 'Golden Retriever'},
	{name: 'Pug'},
	{name: 'Maltês'},
	{name: 'Shih Tzu'},
	{name: 'Yorkshire'},
	{name: 'Labrador'},
	{name: 'Pinscher'},
	{name: 'Poodle'},
	{name: 'Sem raça definida'},
	{name: 'Outro...'},
])

dogs_list = []

1000.times do
	dog_name = Faker::Name.first_name
  owner_name = Faker::Name.name
  gender = Faker::Number.between(1,2)
  onwer_phone_1 = Faker::Number.number(10)
  breed_id = Faker::Number.between(1,10)

  dogs_list << [ dog_name, owner_name, gender , onwer_phone_1 , breed_id ]
end

dogs_list.each do |dog_name, owner_name, gender , onwer_phone_1 , breed_id|
  Dog.create ([{ dog_name: dog_name, owner_name: owner_name, gender: gender, onwer_phone_1: onwer_phone_1, breed_id: breed_id
  }])
end