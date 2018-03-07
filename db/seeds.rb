# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Inserting Categories..."
categories = ["Animales y accesorios",
              "Deportes",
              "Para su casa",
              "Electrónicos y móviles",
              "Música y aficiones",
              "Bebés y niños",
              "Moda y belleza",
              "Vehículos y barcos",
              "Inmuebles",
              "Empleos y negocios"] 

categories.each do |category|
  Category.find_or_create_by(description: category)
end
puts "Successfully inserted Categories"