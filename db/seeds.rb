# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names_list = [
	['Jane', 'Doe'],
	['John', 'Argus', 'Filch'],
	['Jane', 'Do', 'Doe'],
	['Billy', 'Bob', 'Thornton'],
	['Agnes', 'Dolittle'],
	['Melody', 'Lin']

]

names_list.each do |first_name, last_name|
	Customer.create( first_name: first_name, last_name: last_name)
end