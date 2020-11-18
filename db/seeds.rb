# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
UserToEvent.destroy_all

100.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do
    Event.create(name: Faker::Music.band, address: Faker::Address.street_address, description: Faker::Lorem.paragraph_by_chars)
end
