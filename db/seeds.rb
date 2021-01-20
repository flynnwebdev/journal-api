# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entry.destroy_all()
Category.destroy_all()

food = Category.create(name: 'Food')
coding = Category.create(name: 'Coding')
movies = Category.create(name: 'Movies')
other = Category.create(name: 'Other')

Entry.create(content: 'React is awesome!', category: coding)
Entry.create(content: 'Scorsese sucks!', category: movies)
Entry.create(content: 'I love coffee!', category: food)

