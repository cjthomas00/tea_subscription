# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Customer.create(first_name: "Caleb", last_name: "Thomas", email: "cthomas123@gmail.com", address: "123 Main St. Denver, CO 80202")
Customer.create(first_name: "Jim", last_name: "Carlson", email: "jc@gmail.com", address: "1253 Main St. Ft. Collins, CO 80525")
Customer.create(first_name: "Fran", last_name: "Gomez", email: "FG45@gmail.com", address: "8123 Main St. Limon, CO 80633")
Customer.create(first_name: "Tish", last_name: "Smith", email: "TS465@gmail.com", address: "1239 Main St. Greeley, CO 80634")
Customer.create(first_name: "Alex", last_name: "Johnson", email: "aj123@gmail.com", address: "1234 Main St. Loveland, CO 80537")

Tea.create(title: "Earl Grey", description: "A tea named after Earl. It is tasty but grey.", temperature: 165, brew_time: 3)
Tea.create(title: "Herbal Tea", description: "A tea that is very herbal.", temperature: 210, brew_time: 5)
Tea.create(title: "Sleepytime", description: "This tea will make you sleep.", temperature: 185, brew_time: 4)
Tea.create(title: "Orange Cinnamon", description: "Tasty tea, that is orange and red in color.", temperature: 170, brew_time: 3)
Tea.create(title: "Green Tea", description: "Not so full of caffeine, greenish color.", temperature: 165, brew_time: 3)
Tea.create(title: "Black Tea", description: "Full of caffeine, black in color.", temperature: 190, brew_time: 4)
Tea.create(title: "Oolong", description: "Does anyone know what this is?", temperature: 200, brew_time: 5)
Tea.create(title: "Iced tea", description: "A great drink on a cold day", temperature: 165, brew_time: 3)