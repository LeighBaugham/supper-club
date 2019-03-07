# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
scott = User.create(name: "Scott", user_name: "Codedaddy", password: "digest")
dana = User.create(name: "Dana", user_name: "Dana123", password: "onlyzoll")
leigh = User.create(name: "Leigh", user_name: "Baugham", password: "apples")

party_1 = DinnerParty.create(user_id: 1, location: "flatiron", cuisine: "tex-mex", date: Time.now, max_guests: 8, price_per_guest: 75.00 )

dinner_guest_1 = DinnerGuest.create(user_id: 2, dinner_party_id: 1)

review_1 = UserReview.create(review_text: "Great food. Great ambience. Loved it!", rating: 9, dinner_guest_id: 1)