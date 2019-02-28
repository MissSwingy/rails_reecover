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

puts "destroy all answers"
Answer.destroy_all

puts "destroy all questions"
Question.destroy_all

puts "destroy all surveys"
Survey.destroy_all

puts "destroy all attempts"
Attempt.destroy_all
puts "destroy all users answers"
UserAnswer.destroy_all
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
photo: "quiz/1question/time.jpg")
answer11.save!

answer12 = Answer.new(
question: question1,
column: "A",
answer: "me lance sáns réfléchir, c'est une histoire d'inspiration.",
photo: "quiz/1question/swim.jpg")
answer12.save!

answer13 = Answer.new(
question: question1,
column: "I",
answer: "visualise la compétition et j'imagine chaque détail.",
photo: "quiz/1question/details.jpg")
answer13.save!

answer14 = Answer.new(
question: question1,
column: "S",
answer: "me concentre avec mon équipe pour sortir le meilleur de chacun.",
photo: "quiz/1question/team.jpg")
answer14.save!

answer15 = Answer.new(
question: question1,
column: "C",
answer: "dois avoir un plan bien défini au préalable avec mon coach.",
photo: "quiz/1question/coach.jpg")
answer15.save!

answer16 = Answer.new(
question: question1,
column: "E",
answer: "donne les dernières consignes, je suis responsable de mon team.",
photo: "quiz/1question/leader.jpg")
answer16.save!

question2 = Question.new(
question: "Ton film préferé",
survey: Survey.last)

question2.save!

answer21 = Answer.new(
question: question2,
column: "R",
answer: "La fureur de vaincre",
photo: "quiz/2qfilms/lafureur.jpg")
answer21.save!

answer22 = Answer.new(
question: question2,
column: "S",
answer: "Million Dollar Baby",
photo: "quiz/2qfilms/milliondollar.jpg")
answer22.save!

answer23 = Answer.new(
question: question2,
column: "A",
answer: "Moi, Tonya",
photo: "quiz/2qfilms/tonya.jpg")
answer23.save!

answer24 = Answer.new(
question: question2,
column: "I",
answer: "Le Grand Bain",
photo: "quiz/2qfilms/grandbain.jpg")
answer24.save!

answer25 = Answer.new(
question: question2,
column: "C",
answer: "Karate Kid",
photo: "quiz/2qfilms/karatekid.jpg")
answer25.save!

answer26 = Answer.new(
question: question2,
column: "E",
answer: "Jerry Maguire",
photo: "quiz/2qfilms/maguire.jpg")
answer26.save!

question3 = Question.new(
question: "Avec quel personnage tu t'identifies ?",
gender: "M",
survey: Survey.last)
question3.save!

answer31 = Answer.new(
question: question3,
column: "R",
answer: "Bernard Tapie",
photo: "quiz/4qhommes/tapie.jpg")
answer31.save!

answer32 = Answer.new(
question: question3,
column: "I",
answer: "Stephen Hawking",
photo: "quiz/4qhommes/hawking.jpg")
answer32.save!

answer33 = Answer.new(
question: question3,
column: "A",
answer: "Kanye West",
photo: "quiz/4qhommes/west.jpg")
answer33.save!

answer34 = Answer.new(
question: question3,
column: "E",
answer: "Barack Obama",
photo: "quiz/4qhommes/obama.jpg")
answer34.save!

answer35 = Answer.new(
question: question3,
column: "S",
answer: "Teddy Riner",
photo: "quiz/4qhommes/rider.jpg")
answer35.save!

answer36 = Answer.new(
question: question3,
column: "C",
answer: "David Douillet",
photo: "quiz/4qhommes/douillet.jpg")
answer36.save!

question4 = Question.new(
question: "Avec quel personnage tu t'identifies ?",
gender: "F",
survey: Survey.last)

question4.save!

answer41 = Answer.new(
question: question4,
column: "I",
answer: "Marie Curie",
photo: "quiz/3qfemmes/mariecurie.jpg")
answer41.save!

answer42 = Answer.new(
question: question4,
column: "R",
answer: "Laure Boulleau",
photo: "quiz/3qfemmes/laureboulleau.jpg")
answer42.save!

answer43 = Answer.new(
question: question4,
column: "A",
answer: "J. K. Rowling",
photo: "quiz/3qfemmes/rowling.jpg")
answer43.save!

answer44 = Answer.new(
question: question4,
column: "C",
answer: "Anne-Laure Bonnet",
photo: "quiz/3qfemmes/bonnet.jpg")
answer44.save!

answer45 = Answer.new(
question: question4,
column: "S",
answer: "Mère Teresa",
photo: "quiz/3qfemmes/mereteresa.jpg")
answer45.save!

answer46 = Answer.new(
question: question4,
column: "E",
answer: "Angela Merkel",
photo: "quiz/3qfemmes/merkel.jpg")
answer46.save!

question5 = Question.new(
question: "Ton repas préferé contient",
survey: Survey.last)

question5.save!

answer51 = Answer.new(
question: question5,
column: "E",
answer: "Viande",
photo: "quiz/7qfood/viande.jpg")
answer51.save!

answer52 = Answer.new(
question: question5,
column: "R",
answer: "Graisses",
photo: "quiz/7qfood/fishchips.jpg")
answer52.save!

answer53 = Answer.new(
question: question5,
column: "I",
answer: "Whey",
photo: "quiz/7qfood/whey.jpg")
answer53.save!

answer54 = Answer.new(
question: question5,
column: "A",
answer: "Plat gastronomique",
photo: "quiz/7qfood/highcuisine.jpg")
answer54.save!

answer55 = Answer.new(
question: question5,
column: "C",
answer: "Sucres lents",
photo: "quiz/7qfood/spaghetti.jpg")
answer55.save!

answer56 = Answer.new(
question: question5,
column: "S",
answer: "Fibres et vitamines",
photo: "quiz/7qfood/fruits.jpg")
answer56.save!

question6 = Question.new(
question: "Ton loisir préféré",
survey: Survey.last)
question6.save!

answer61 = Answer.new(
question: question6,
column: "E",
answer: "Randonnée en nature",
photo: "quiz/8qhobbies/randonne.jpg")
answer61.save!

answer62 = Answer.new(
question: question6,
column: "C",
answer: "Bricolage",
photo: "quiz/8qhobbies/bricolage.jpg")
answer62.save!

answer63 = Answer.new(
question: question6,
column: "S",
answer: "Coach pour team d'enfants",
photo: "quiz/8qhobbies/coach.jpg")
answer63.save!

answer64 = Answer.new(
question: question6,
column: "A",
answer: "Musique",
photo: "quiz/8qhobbies/music.jpg")
answer64.save!

answer65 = Answer.new(
question: question6,
column: "R",
answer: "Pâtisserie",
photo: "quiz/8qhobbies/baking.jpg")
answer65.save!

answer66 = Answer.new(
question: question6,
column: "I",
answer: "Jardinage",
photo: "quiz/8qhobbies/gardening.jpg")
answer66.save!

question7 = Question.new(
question: "Ton game préféré",
survey: Survey.last)

question7.save!

answer71 = Answer.new(
question: question7,
column: "I",
answer: "Starcraft",
photo: "quiz/6qgaming/starcraft.jpg")
answer71.save!

answer72 = Answer.new(
question: question7,
column: "R",
answer: "FIFA",
photo: "quiz/6qgaming/fifa.jpg")
answer72.save!

answer73 = Answer.new(
question: question7,
column: "S",
answer: "The Sims",
photo: "quiz/6qgaming/sims.jpg")
answer73.save!

answer74 = Answer.new(
question: question7,
column: "A",
answer: "GuitarHero",
photo: "quiz/6qgaming/guitarhero.jpg")
answer74.save!

answer75 = Answer.new(
question: question7,
column: "C",
answer: "Super Mario Bros",
photo: "quiz/6qgaming/supermario.jpg")
answer75.save!

answer76 = Answer.new(
question: question7,
column: "E",
answer: "APEX",
photo: "quiz/6qgaming/apex.jpg")
answer76.save!

question8 = Question.new(
question: "Ton combustible",
survey: Survey.last)

question8.save!

answer81 = Answer.new(
question: question8,
column: "R",
answer: "Boisson energétique",
photo: "quiz/5qdrinks/gatorade.jpg")
answer81.save!

answer82 = Answer.new(
question: question8,
column: "E",
answer: "Whisky",
photo: "quiz/5qdrinks/whisky.jpg")
answer82.save!

answer83 = Answer.new(
question: question8,
column: "A",
answer: "Jus d’orange",
photo: "quiz/5qdrinks/orange.jpg")
answer83.save!

answer84 = Answer.new(
question: question8,
column: "S",
answer: "Thé",
photo: "quiz/5qdrinks/tea.jpg")
answer84.save!

answer85 = Answer.new(
question: question8,
column: "C",
answer: "Eau",
photo: "quiz/5qdrinks/water.jpg")
answer85.save!

answer86 = Answer.new(
question: question8,
column: "I",
answer: "Café serré",
photo: "quiz/5qdrinks/coffee.jpg")
answer86.save!

question9 = Question.new(
question: "Tu es plutôt",
survey: Survey.last)

question9.save!

answer91 = Answer.new(
question: question9,
column: "R",
answer: "Concret/e",
photo: "quiz/9qpersonality/concret.jpg")
answer91.save!

answer92 = Answer.new(
question: question9,
column: "C",
answer: "Perfectioniste",
photo: "quiz/9qpersonality/perfectioniste.jpg")
answer92.save!

answer93 = Answer.new(
question: question9,
column: "E",
answer: "Leader",
photo: "quiz/9qpersonality/leader.jpg")
answer93.save!

answer94 = Answer.new(
question: question9,
column: "S",
answer: "Sociable",
photo: "quiz/9qpersonality/sociable.jpg")
answer94.save!

answer95 = Answer.new(
question: question9,
column: "A",
answer: "Créatif/ve",
photo: "quiz/9qpersonality/creatif.jpg")
answer95.save!

answer96 = Answer.new(
question: question9,
column: "I",
answer: "Introverti/e",
photo: "quiz/9qpersonality/introverti.jpg")
answer96.save!

puts "ok"

puts 'creating attempts ...'

francois_attempt = Attempt.new(
  user_id: francois.id,
  survey_id: survey.id
  )
francois_attempt.save!



puts "ok"
puts 'creating user answers ...'
francois_answers1 = UserAnswer.new(
  user_id: francois.id,
  answer_id: answer12.id,
  attempt_id: francois_attempt.id
  )
francois_answers1.save!

francois_answers2 = UserAnswer.new(
  user_id: francois.id,
  answer_id: answer24.id,
  attempt_id: francois_attempt.id
  )
francois_answers2.save!

francois_answers3 = UserAnswer.new(
  user_id: francois.id,
  answer_id: answer32.id,
  attempt_id: francois_attempt.id
  )
francois_answers3.save!

francois_answers4 = UserAnswer.new(
  user_id: francois.id,
  answer_id: answer53.id,
  attempt_id: francois_attempt.id
  )
francois_answers4.save!

francois_answers5 = UserAnswer.new(
    user_id: francois.id,
  answer_id: answer61.id,
  attempt_id: francois_attempt.id
  )
francois_answers5.save!

francois_answers6 = UserAnswer.new(

    user_id: francois.id,
  answer_id: answer76.id,
  attempt_id: francois_attempt.id
  )
francois_answers6.save!

francois_answers7 = UserAnswer.new(
    user_id: francois.id,
  answer_id: answer85.id,
  attempt_id: francois_attempt.id
  )
francois_answers7.save!

francois_answers8 = UserAnswer.new(
    user_id: francois.id,
  answer_id: answer96.id,
  attempt_id: francois_attempt.id
  )
francois_answers8.save!

puts "end"
