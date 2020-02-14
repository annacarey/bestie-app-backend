# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Friend.destroy_all

anna = User.create(name: "Anna", email: "annacarey@icloud.com", phone_number: "914-907-4672", image_url: "test")
calvin = User.create(name: "Calvin", email: "calvin@calvin.com", phone_number: "555-555-5555", image_url: "test") 

Friend.create(name: "Michelle", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "High", user: anna)
Friend.create(name: "Ethan", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "High", user: anna)
Friend.create(name: "Sarah", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "High", user: calvin)
Friend.create(name: "Cory", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "High", user: calvin)
Friend.create(name: "Josh", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "Medium", user: calvin)
Friend.create(name: "Nathan", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "Medium", user: calvin)
Friend.create(name: "Maria", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "Low", user: calvin)
Friend.create(name: "Gertrude", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "Low", user: calvin)
Friend.create(name: "Corinne", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "Medium", user: calvin)
Friend.create(name: "Balthazar", phone_number: "914-907-9336", image_url: "test", date_last_outreach: Time.now, priority: "Low", user: calvin)
