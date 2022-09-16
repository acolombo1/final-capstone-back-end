# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.create(name: 'New Item 1', description: 'Description 1', photo: 'Photo 1', range: 'Range 1')
first_user = User.create(email: 'tomsmail@yahoo.com')
first_user.password = '123456'
first_user.save
