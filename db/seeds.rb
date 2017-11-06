# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: "People")
Category.create(name: "Travel")
Category.create(name: "Food")

Tag.create(name: "Happy")
Tag.create(name: "Unhappy")
Tag.create(name: "Men")
Tag.create(name: "Women")
Tag.create(name: "Childrens")
Tag.create(name: "Spring")
Tag.create(name: "Winter")
Tag.create(name: "Summer")
Tag.create(name: "Automn")