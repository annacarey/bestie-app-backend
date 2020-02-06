# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


anna = User.create(name: "Anna", email: "annacarey@icloud.com", phone_number: "914-907-4672", image_url: "test")
dean = User.create(name: "Dean", email: "dean@dean.com", phone_number: "555-555-5555", image_url: "test")

Friend.create(name: "Michelle", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "high", user: anna)
Friend.create(name: "Ethan", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "high", user: anna)
Friend.create(name: "Sarah", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "high", user: dean)
Friend.create(name: "David", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "high", user: dean)