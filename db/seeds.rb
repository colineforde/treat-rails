# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: "coline", email: "coline@gmail.com", password: "password")
User.create!(username: "bob", email: "bob@gmail.com", password: "password")
Card.create!(greeting: "hello", message: "I miss you!")
Recipient.create!(recipient_id: 2, sender_id: 1)
UserCard.create!(user_id: 1, card_id: 1)
Template.create!(image: "https://robohash.org/my-own-slug.png?size=50x50", card_id: 1)
