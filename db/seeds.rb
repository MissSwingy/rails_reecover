# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all users"
puts "destroy all attempts"

User.destroy_all
Attempt.destroyAll
puts 'Creating users...'

url_eleonore = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/psrttn14zuhmsk04g50k.jpg"
eleonore = User.new(
    first_name: "Eleonore",
    last_name: "Selly",
    gender: "F",
    sport: "Plongée",
    bio: "Sportive d'haut niveau à la retraite",
    address: "16 villa Gaudelet, 75011, Paris",
    email: "eleonore@gmail.com",
    password: "reecover"
  )
eleonore.remote_photo_url = url_eleonore
eleonore.save!

url_natalia = "https://avatars3.githubusercontent.com/u/43504407?v=4"
natalia = User.new(
    first_name: "Natalia",
    last_name: "Vega",
    gender: "F",
    sport: "Basketball",
    bio: "Sportive d'haut niveau à la retraite",
    address: "16 villa Gaudelet, 75011, Paris",
    email: "natalia@gmail.com",
    password: "reecover"
  )
natalia.remote_photo_url = url_natalia
natalia.save!

url_francois = "https://avatars0.githubusercontent.com/u/45876591?v=4"
francois = User.new(
    first_name: "François",
    last_name: "Nguyen",
    gender: "M",
    sport: "Football",
    bio: "Sportif d'haut niveau à la retraite",
    address: "16 villa Gaudelet, 75011, Paris",
    email: "francois@gmail.com",
    password: "reecover"
  )

francois.remote_photo_url = url_francois
francois.save!
puts "ok"
puts 'Creating survey...'
francois_survey = Survey.new
francois_survey.save
puts "ok"

puts 'Creating questions...'
questions1 = Question.new(
  question: "vous êtes ... ?"
  survey_id: francois_survey.id
  )
questions1.save

questions2 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions2.save

questions3 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions3.save

questions4 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions4.save

questions5 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions5.save

questions6 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions6.save

questions7 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions7.save

questions8 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions8.save

questions9 = Question.new(
  question: "Avant une compétition, je ...?"
  survey_id: francois_survey.id
  )
questions9.save

puts 'Creating attempts...'
francois_attempt = Attempt.new(
  user_id: francois.id,


)


