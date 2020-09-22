# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


gd1 = Gooddeed.create(body: "I donated", day: Date.today)
gd2 = Gooddeed.create(body: "I recycled", day: Date.today)
gd3 = Gooddeed.create(body: "I was nice", day: Date.today)



u1 = User.create(name: "Bobby", email: "bobby@gmail.com", password_confirmation: "password")
u2 = User.create(name: "Bobbi", email: "bobbi@gmail.com", password_confirmation: "password")
u3 = User.create(name: "Dahlia", email: "Dahlia@gmail.com", password_confirmation: "password")