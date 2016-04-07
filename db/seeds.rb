# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: "coline", email: "coline@gmail.com", phone: '1234567',password: "password")
User.create!(username: "bob", email: "bob@gmail.com", phone: '123455543', password: "password")
5.times{User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")}
Card.create!(greeting: "hello", message: "I miss you!", template_id: 1, occasion: "christmas")
Card.create!(greeting: "goodbye", message: "I love you!", template_id: 2, occasion: "bbq")
Card.create!(greeting: "what's up", message: "hello hello~", occasion: "night out")
Card.create!(greeting: "good to see you", message: "come back soon!", occasion: "bday")
Recipient.create!(recipient_id: 2, sender_id: 1)
Recipient.create!(recipient_id: 2, sender_id: 1)
Recipient.create!(recipient_id: 2, sender_id: 1)
Recipient.create!(recipient_id: 2, sender_id: 1)
UserCard.create!(user_id: 1, card_id: 1, recipient_id: 2)
UserCard.create!(user_id: 1, card_id: 2, recipient_id: 2)
UserCard.create!(user_id: 1, card_id: 3, recipient_id: 2)
UserCard.create!(user_id: 1, card_id: 4, recipient_id: 2)
5.times{Template.create!(image: "https://robohash.org/my-own-slug.png?size=50x50")}
Card.create!(greeting: "Hi Baron!", message: "Nice to see you", template_id: 1, occasion: "Casual greetings")
Card.create!(greeting: "See ya", message: "See you soon", template_id: 2, occasion: "good times")
Card.create!(greeting: "Thanks!", message: "Thanks for dinner!", occasion: "last night")
Recipient.create!(recipient_id: 1, sender_id: 2)
Recipient.create!(recipient_id: 1, sender_id: 2)
Recipient.create!(recipient_id: 1, sender_id: 2)
UserCard.create!(user_id: 2, card_id: 5, recipient_id: 1)
UserCard.create!(user_id: 2, card_id: 6, recipient_id: 1)
UserCard.create!(user_id: 2, card_id: 7, recipient_id: 1)
