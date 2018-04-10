# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "test@test.com", password: "testing")
Vacation.create(name: "Spring Break", destination: "Miami", start: "March 20, 2018", end: "March 25, 2018", user_id: 1, item_id: 1, activity_id: 1)
Item.create(name: "surfboard", item_category: "beach toys")
Activity.create(name: "surfing", activity_category: "beach sports")
