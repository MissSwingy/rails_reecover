# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "destroy all users"

# User.destroy_all

# puts 'Creating users...'

# url_eleonore = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/psrttn14zuhmsk04g50k.jpg"
# eleonore = User.new(
#     first_name: "Eleonore",
#     last_name: "Selly",
#     gender: "F",
#     sport: "Plongée",
#     bio: "Sportive d'haut niveau à la retraite",
#     address: "16 villa Gaudelet, 75011, Paris",
#     email: "eleonore@gmail.com",
#     password: "reecover"
#   )
# eleonore.remote_photo_url = url_eleonore
# eleonore.save!

# url_natalia = "https://avatars3.githubusercontent.com/u/43504407?v=4"
# natalia = User.new(
#     first_name: "Natalia",
#     last_name: "Vega",
#     gender: "F",
#     sport: "Basketball",
#     bio: "Sportive d'haut niveau à la retraite",
#     address: "16 villa Gaudelet, 75011, Paris",
#     email: "natalia@gmail.com",
#     password: "reecover"
#   )
# natalia.remote_photo_url = url_natalia
# natalia.save!

# url_francois = "https://avatars0.githubusercontent.com/u/45876591?v=4"
# francois = User.new(
#     first_name: "François",
#     last_name: "Nguyen",
#     gender: "M",
#     sport: "Football",
#     bio: "Sportif d'haut niveau à la retraite",
#     address: "16 villa Gaudelet, 75011, Paris",
#     email: "francois@gmail.com",
#     password: "reecover"
#   )
# francois.remote_photo_url = url_francois
# francois.save!


# puts "ok"

puts "destroy all answers"
Answer.destroy_all

puts "destroy all questions"
Question.destroy_all

puts "destroy all surveys"
Survey.destroy_all


puts 'Creating surveys...'

survey = Survey.new()
survey.save!

question1 = Question.new(
question: "Avant une compétition, je ...",
survey: Survey.last)
question1.save!

answer11 = Answer.new(
question: question1,
column: "R",
answer: "me concentre dans mes derniers résultats.",
photo: "/quiz/1question/time.jpg")
answer11.save!

answer12 = Answer.new(
question: question1,
column: "A",
answer: "me lance sáns réfléchir, c'est une histoire d'inspiration.",
photo: "/quiz/1question/swim.jpg")
answer12.save!

answer13 = Answer.new(
question: question1,
column: "I",
answer: "visualise la compétition et j'imagine chaque détail.",
photo: "/quiz/1question/details.jpg")
answer13.save!

answer14 = Answer.new(
question: question1,
column: "S",
answer: "me concentre avec mon équipe pour sortir le meilleur de chacun.",
photo: "/quiz/1question/team.jpg")
answer14.save!

answer15 = Answer.new(
question: question1,
column: "C",
answer: "dois avoir un plan bien défini au préalable avec mon coach.",
photo: "/quiz/1question/coach.jpg")
answer15.save!

answer16 = Answer.new(
question: question1,
column: "E",
answer: "donne les dernières consignes, je suis responsable de mon team.",
photo: "/quiz/1question/leader.jpg")
answer16.save!

# question2 = Question.new(
# question: "Ton film préferé",
# survey: Survey.last)

# question2.save!

# answer21 = Answer.new(
# question: question2,
# column: "R",
# answer: "La fureur de vaincre",
# photo: "")
# answer21.save!

# answer22 = Answer.new(
# question: question2,
# column: "S",
# answer: "Million Dollar Baby",
# photo: "")
# answer22.save!

# answer23 = Answer.new(
# question: question2,
# column: "A",
# answer: "Moi, Tonya",
# photo: "")
# answer23.save!

# answer24 = Answer.new(
# question: question2,
# column: "I",
# answer: "Le Grand Bain",
# photo: "")
# answer24.save!

# answer25 = Answer.new(
# question: question2,
# column: "C",
# answer: "Karate Kid",
# photo: "")
# answer25.save!

# answer26 = Answer.new(
# question: question2,
# column: "E",
# answer: "Jerry Maguire",
# photo: "")
# answer26.save!

# question3 = Question.new(
# question: "Avec quel personnage tu t'identifies ?",
# survey: Survey.last)
# question3.save!

# answer31 = Answer.new(
# question: question3,
# column: "",
# answer: "Bernard Tapie",
# photo: "")
# answer31.save!

# answer32 = Answer.new(
# question: question3,
# column: "",
# answer: "Stephen Hawking",
# photo: "")
# answer32.save!

# answer33 = Answer.new(
# question: question3,
# column: "",
# answer: "Kanye West",
# photo: "")
# answer33.save!

# answer34 = Answer.new(
# question: question3,
# column: "",
# answer: "Barack Obama",
# photo: "")
# answer34.save!

# answer35 = Answer.new(
# question: question3,
# column: "",
# answer: "Teddy Riner",
# photo: "")
# answer35.save!

# answer36 = Answer.new(
# question: question3,
# column: "",
# answer: "David Douillet",
# photo: "")
# answer36.save!

# question4 = Question.new(
# question: "Avec quel personnage tu t'identifies ?",
# survey: Survey.last)

# question4.save!

# answer41 = Answer.new(
# question: question4,
# column: "",
# answer: "Marie Curie",
# photo: "")
# answer41.save!

# answer42 = Answer.new(
# question: question4,
# column: "",
# answer: "Laure Boulleau",
# photo: "")
# answer42.save!

# answer43 = Answer.new(
# question: question4,
# column: "",
# answer: "J. K. Rowling",
# photo: "")
# answer43.save!

# answer44 = Answer.new(
# question: question4,
# column: "",
# answer: "Anne-Laure Bonnet",
# photo: "")
# answer44.save!

# answer45 = Answer.new(
# question: question4,
# column: "",
# answer: "Mère Teresa",
# photo: "")
# answer45.save!

# answer46 = Answer.new(
# question: question4,
# column: "",
# answer: "Angela Merkel",
# photo: "")
# answer46.save!

# question5 = Question.new(
# question: "Ton repas préferé contient",
# survey: Survey.last)

# question5.save!

# answer51 = Answer.new(
# question: question5,
# column: "",
# answer: "Protéines d'origin animal",
# photo: "")
# answer51.save!

# answer52 = Answer.new(
# question: question5,
# column: "",
# answer: "Graises",
# photo: "")
# answer52.save!

# answer53 = Answer.new(
# question: question5,
# column: "",
# answer: "Protéines synthé",
# photo: "")
# answer53.save!

# answer54 = Answer.new(
# question: question5,
# column: "",
# answer: "Plat gastronomique",
# photo: "")
# answer54.save!

# answer55 = Answer.new(
# question: question5,
# column: "",
# answer: "Sucres lents",
# photo: "")
# answer55.save!

# answer56 = Answer.new(
# question: question5,
# column: "",
# answer: "Fibres et vitamines",
# photo: "")
# answer56.save!

# question6 = Question.new(
# question: "Ton loisir préféré",
# survey: Survey.last)
# question6.save!

# answer61 = Answer.new(
# question: question6,
# column: "",
# answer: "Randonnée en nature",
# photo: "")
# answer61.save!

# answer62 = Answer.new(
# question: question6,
# column: "",
# answer: "Bricolage",
# photo: "")
# answer62.save!

# answer63 = Answer.new(
# question: question6,
# column: "",
# answer: "Coach pour team d'enfants",
# photo: "")
# answer63.save!

# answer64 = Answer.new(
# question: question6,
# column: "",
# answer: "Musique",
# photo: "")
# answer64.save!

# answer65 = Answer.new(
# question: question6,
# column: "",
# answer: "Pâtisserie",
# photo: "")
# answer65.save!

# answer66 = Answer.new(
# question: question6,
# column: "",
# answer: "Jardinage",
# photo: "")
# answer66.save!

# question7 = Question.new(
# question: "Ton game préféré",
# survey: Survey.last)

# question7.save!

# answer71 = Answer.new(
# question: question7,
# column: "",
# answer: "Starcraft",
# photo: "")
# answer71.save!

# answer72 = Answer.new(
# question: question7,
# column: "",
# answer: "FIFA",
# photo: "")
# answer72.save!

# answer73 = Answer.new(
# question: question7,
# column: "",
# answer: "The Sims",
# photo: "")
# answer73.save!

# answer74 = Answer.new(
# question: question7,
# column: "GuitarHero",
# answer: "",
# photo: "")
# answer74.save!

# answer75 = Answer.new(
# question: question7,
# column: "",
# answer: "Super Mario Bros",
# photo: "")
# answer75.save!

# answer76 = Answer.new(
# question: question7,
# column: "",
# answer: "APEX",
# photo: "")
# answer76.save!

# question8 = Question.new(
# question: "Ton combustible",
# survey: Survey.last)

# question8.save!

# answer81 = Answer.new(
# question: question8,
# column: "",
# answer: "Gatorade",
# photo: "")
# answer81.save!

# answer82 = Answer.new(
# question: question8,
# column: "",
# answer: "Whisky",
# photo: "")
# answer82.save!

# answer83 = Answer.new(
# question: question8,
# column: "",
# answer: "Jus d’orange",
# photo: "")
# answer83.save!

# answer84 = Answer.new(
# question: question8,
# column: "",
# answer: "Thé",
# photo: "")
# answer84.save!

# answer85 = Answer.new(
# question: question8,
# column: "",
# answer: "Eau",
# photo: "")
# answer85.save!

# answer86 = Answer.new(
# question: question8,
# column: "",
# answer: "Café serré",
# photo: "")
# answer86.save!

# question9 = Question.new(
# question: "Tu es plutôt",
# survey: Survey.last)

# question9.save!

# answer91 = Answer.new(
# question: question9,
# column: "",
# answer: "Concret/e",
# photo: "")
# answer91.save!

# answer92 = Answer.new(
# question: question9,
# column: "",
# answer: "Perfectioniste",
# photo: "")
# answer92.save!

# answer93 = Answer.new(
# question: question9,
# column: "",
# answer: "Leader",
# photo: "")
# answer93.save!

# answer94 = Answer.new(
# question: question9,
# column: "",
# answer: "Sociable",
# photo: "")
# answer94.save!

# answer95 = Answer.new(
# question: question9,
# column: "",
# answer: "Créatif/ve",
# photo: "")
# answer95.save!

# answer96 = Answer.new(
# question: question9,
# column: "Introverti/e",
# answer: "",
# photo: "")
# answer96.save!

puts "ok"
