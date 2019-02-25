# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all users"

User.destroy_all

puts 'Creating users...'

url_eleonore = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/psrttn14zuhmsk04g50k.jpg"
eleonore = User.new(
    first_name: "Eleonore",
    last_name: "Selly",
    gender: "F"
    sport: "Plongée"
    bio: "Sportive d'haut niveau à la retraite"
    address: "16 villa Gaudelet, 75011, Paris"
    email: "eleonore@gmail.com",
    password: "reecover"
  )
eleonore.remote_photo_url = url_eleonore
eleonore.save!

url_natalia = "https://avatars3.githubusercontent.com/u/43504407?v=4"
natalia = User.new(
    first_name: "Natalia",
    last_name: "Vega",
    gender: "F"
    sport: "Basketball"
    bio: "Sportive d'haut niveau à la retraite"
    address: "16 villa Gaudelet, 75011, Paris"
    email: "natalia@gmail.com",
    password: "reecover"
  )
natalia.remote_photo_url = url_natalia
natalia.save!

url_francois = "https://avatars0.githubusercontent.com/u/45876591?v=4"
francois = User.new(
    first_name: "François",
    last_name: "Nguyen",
    gender: "F"
    sport: "Football"
    bio: "Sportive d'haut niveau à la retraite"
    address: "16 villa Gaudelet, 75011, Paris"
    email: "francois@gmail.com",
    password: "reecover"
  )
francois.remote_photo_url = url_francois
francois.save!



puts "ok"
