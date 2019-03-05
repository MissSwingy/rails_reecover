# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy all centers"

TrainingCenter.destroy_all

puts 'Creating centers...'

dev = Career.find_by title: "Commis de bourse"

centre1 = TrainingCenter.new(
name: "Le Wagon",
address: "16, Villa Gaudelet",
city: "Paris",
category: "TI",
email: "lewagon@lewagon.org",
telephone: "0101010101",
website: "http://www.lewagon.org",
latitude: "48.86",
longitude: "2.37",
career: dev
)
centre1.save!

com = Career.find_by title: "Comptable"

centre2 = TrainingCenter.new(
name: "ESCP",
address: "179 Avenue de la République",
city: "Paris",
category: "Commerce",
email: "escp@escpeurope.eu",
telephone: "0101010101",
website: "https://www.escpeurope.eu/",
latitude: "48.87",
longitude: "2.35",
career: com
)

centre2.save!
puts 'end...'



puts "destroy all users"

User.destroy_all

puts 'Creating users...'

url_eleonore = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/psrttn14zuhmsk04g50k.jpg"
eleonore = User.new(
    first_name: "Eleonore",
    last_name: "Selly",
    gender: "F",
    sport: "Boxe",
    bio: "Sportive de Haut Niveau en reconversion",
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
    bio: "Sportive de Haut Niveau en reconversion",
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
    bio: "Sportif de Haut Niveau en reconversion",
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
answer: "me concentre sur l'amélioration de mes derniers résultats.",
photo: "quiz/1question/time.jpg")
answer11.save!

answer12 = Answer.new(
question: question1,
column: "A",
answer: "me lance sans réfléchir, c'est une histoire d'inspiration.",
photo: "quiz/1question/swim.jpg")
answer12.save!

answer13 = Answer.new(
question: question1,
column: "I",
answer: "visualise la compétition et j'anticipe chaque détail.",
photo: "quiz/1question/details.jpg")
answer13.save!

answer14 = Answer.new(
question: question1,
column: "S",
answer: "me concentre sur mon équipe pour sortir le meilleur de chacun.",
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
answer: "donne les dernières consignes, je suis responsable de ma team.",
photo: "quiz/1question/leader.jpg")
answer16.save!

question2 = Question.new(
question: "Ton film préferé un dimanche soir :",
survey: Survey.last)

question2.save!

answer21 = Answer.new(
question: question2,
column: "C",
answer: "Karaté Kid",
photo: "quiz/2qfilms/karatekid.jpg")
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
column: "E",
answer: "Jerry Maguire",
photo: "quiz/2qfilms/maguire.jpg")
answer25.save!

answer26 = Answer.new(
question: question2,
column: "R",
answer: "La Fureur de Vaincre",
photo: "quiz/2qfilms/lafureur.jpg")
answer26.save!

question3 = Question.new(
question: "A quelle personnalité tu t'identifies le + ?",
gender: "M",
survey: Survey.last)
question3.save!

answer31 = Answer.new(
question: question3,
column: "I",
answer: "Stephen Hawking",
photo: "quiz/4qhommes/hawking.jpg")
answer31.save!

answer32 = Answer.new(
question: question3,
column: "R",
answer: "Bernard Tapie",
photo: "quiz/4qhommes/tapie.jpg")
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
column: "C",
answer: "David Douillet",
photo: "quiz/4qhommes/douillet.jpg")
answer35.save!

answer36 = Answer.new(
question: question3,
column: "S",
answer: "Teddy Riner",
photo: "quiz/4qhommes/rider.jpg")
answer36.save!

question4 = Question.new(
question: "A quelle personnalité tu t'identifies le + ?",
gender: "F",
survey: Survey.last)

question4.save!

answer41 = Answer.new(
question: question4,
column: "C",
answer: "Anne-Laure Bonnet",
photo: "quiz/3qfemmes/bonnet.jpg")
answer41.save!

answer42 = Answer.new(
question: question4,
column: "S",
answer: "Mère Teresa",
photo: "quiz/3qfemmes/mereteresa.jpg")
answer42.save!

answer43 = Answer.new(
question: question4,
column: "E",
answer: "Angela Merkel",
photo: "quiz/3qfemmes/merkel.jpg")
answer43.save!

answer44 = Answer.new(
question: question4,
column: "I",
answer: "Marie Curie",
photo: "quiz/3qfemmes/mariecurie.jpg")
answer44.save!

answer45 = Answer.new(
question: question4,
column: "R",
answer: "Laure Boulleau",
photo: "quiz/3qfemmes/laureboulleau.jpg")
answer45.save!

answer46 = Answer.new(
question: question4,
column: "A",
answer: "J. K. Rowling",
photo: "quiz/3qfemmes/rowling.jpg")
answer46.save!

question5 = Question.new(
question: "Ton repas préféré contient :",
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
answer: "Lipides",
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
question: "Ton loisir préféré pour décompresser :",
survey: Survey.last)
question6.save!

answer62 = Answer.new(
question: question6,
column: "C",
answer: "Bricolage",
photo: "quiz/8qhobbies/bricolage.jpg")
answer62.save!

answer61 = Answer.new(
question: question6,
column: "E",
answer: "Randonnée en nature",
photo: "quiz/8qhobbies/randonne.jpg")
answer61.save!

answer63 = Answer.new(
question: question6,
column: "S",
answer: "Coaching",
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
answer: "Gourmandises",
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
column: "S",
answer: "The Sims",
photo: "quiz/6qgaming/sims.jpg")
answer72.save!

answer73 = Answer.new(
question: question7,
column: "R",
answer: "FIFA",
photo: "quiz/6qgaming/fifa.jpg")
answer73.save!

answer74 = Answer.new(
question: question7,
column: "C",
answer: "Super Mario Bros",
photo: "quiz/6qgaming/supermario.jpg")
answer74.save!

answer75 = Answer.new(
question: question7,
column: "A",
answer: "GuitarHero",
photo: "quiz/6qgaming/guitarhero.jpg")
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
answer: "Boisson énergétique",
photo: "quiz/5qdrinks/gatorade.jpg")
answer81.save!

answer82 = Answer.new(
question: question8,
column: "E",
answer: "Boisson alcoolisée",
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
question: "Tu es plutôt :",
survey: Survey.last)

question9.save!

answer91 = Answer.new(
question: question9,
column: "A",
answer: "Créatif(ve)",
photo: "quiz/9qpersonality/creatif.jpg")
answer91.save!

answer92 = Answer.new(
question: question9,
column: "C",
answer: "Perfectionniste",
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
column: "R",
answer: "Concret(e)",
photo: "quiz/9qpersonality/concret.jpg")
answer94.save!

answer95 = Answer.new(
question: question9,
column: "S",
answer: "Sociable",
photo: "quiz/9qpersonality/sociable.jpg")
answer95.save!

answer96 = Answer.new(
question: question9,
column: "I",
answer: "Introverti(e)",
photo: "quiz/9qpersonality/introverti.jpg")
answer96.save!

puts "ok"

puts 'Destroying personalities_riasec...'

PersonalityRiasec.destroy_all

puts 'Creating personalities_riasec...'

PersonalityRiasec.create!(
  name: "Réaliste",
  description: "Les personnes de ce type exercent surtout des tâches concrètes. Habiles de leurs mains, elles savent coordonner leurs gestes. Elles se servent d’outils, font fonctionner des appareils, des machines, des véhicules. Les réalistes ont le sens de la mécanique, le souci de la précision. Plusieurs exercent leur profession à l’extérieur plutôt qu’à l’intérieur. Leur travail demande souvent une bonne endurance physique et même des capacités athlétiques. Ces personnes sont patientes, minutieuses, constantes, sensées, naturelles, franches, pratiques, concrètes, simples.",
  avatar_f: "realiste.jpg",
  avatar_m: "realiste.jpg")
PersonalityRiasec.find_by name: "Réaliste"

PersonalityRiasec.create!(
  name: "Artistique",
  description: "Les personnes de ce type aiment les activités qui leur permettent de s’exprimer librement à partir de leurs perceptions, de leur sensibilité et de leur intuition. Elles s’intéressent au travail de création, qu’il s’agisse d’art visuel, de littérature, de musique, de publicité ou de spectacle. D’esprit indépendant et non conformiste, elles sont à l’aise dans des situations qui sortent de l’ordinaire. Elles sont dotées d’une grande sensibilité et de beaucoup d’imagination. Bien qu’elles soient rebutées par les tâches méthodiques et routinières, elles sont néanmoins capables de travailler avec discipline. Ces personnes sont spontanées, expressives, imaginatives, émotives, indépendantes, originales, intuitives, passionnées, fières, flexibles, disciplinées.",
  avatar_f: "artistique.jpg",
  avatar_m: "artistique.jpg")
PersonalityRiasec.find_by name: "Artistique"

PersonalityRiasec.create!(
  name: "Conventionnel",
  description: "Les personnes de ce type ont une préférence pour les activités précises, méthodiques, axées sur un résultat prévisible. Elles se préoccupent de l’ordre et de la bonne organisation matérielle de leur environnement. Elles préfèrent se conformer à des conventions bien établies et à des consignes claires plutôt que d’agir dans l’improvisation. Elles aiment calculer, classer, tenir à jour des registres ou des dossiers. Elles sont efficaces dans tout travail qui exige de l’exactitude et à l’aise dans les tâches routinières. Ces personnes sont loyales, organisées, efficaces, respectueuses de l’autorité, perfectionnistes, raisonnables, consciencieuses, ponctuelles, discrètes, strictes.",
  avatar_f: "conventionnel.jpg",
  avatar_m: "conventionnel.jpg")
PersonalityRiasec.find_by name: "Conventionnel"

PersonalityRiasec.create!(
  name: "Entrepreneur",
  description: "Les personnes de ce type aiment influencer leur entourage. Leur capacité de décision, le sens de l’organisation et une habileté particulière à communiquer leur enthousiasme les appuient dans leurs objectifs. Elles savent vendre des idées autant que des biens matériels. Elles ont le sens de l’organisation, de la planification et de l’initiative et savent mener à bien leurs projets. Elles savent faire preuve d’audace et d’efficacité. Ces personnes sont persuasives, énergiques, optimistes, audacieuses, sûres d’elles-mêmes, ambitieuses, déterminées, diplomates, débrouillardes, sociables.",
  avatar_f: "entreprenant.jpg",
  avatar_m: "entreprenant.jpg")
PersonalityRiasec.find_by name: "Entrepreneur"

PersonalityRiasec.create!(
  name: "Investigateur",
  description: "La plupart des personnes de ce type ont des connaissances théoriques auxquelles elles ont recours pour agir. Elles disposent de renseignements spécialisés dont elles se servent pour résoudre des problèmes. Ce sont des personnes qui observent. Leur principale compétence tient à la compréhension qu’elles ont des phénomènes. Elles aiment bien se laisser absorber dans leurs réflexions. Elles aiment jouer avec les idées. Elles valorisent le savoir. Ces personnes sont critiques, curieuses, soucieuses de se renseigner, calmes, réservées, persévérantes, tolérantes, prudentes dans leurs jugements, logiques, objectives, rigoureuses, intellectuelles.",
  avatar_f: "investigateur.jpg",
  avatar_m: "investigateur.jpg")
PersonalityRiasec.find_by name: "Investigateur"

PersonalityRiasec.create!(
  name: "Social",
  description: "Les personnes de ce type aiment être en contact avec les autres dans le but de les aider, de les informer, de les éduquer, de les divertir, de les soigner ou encore de favoriser leur croissance. Elles s’intéressent aux comportements humains et sont soucieuses de la qualité de leurs relations avec les autres. Elles utilisent leur savoir ainsi que leurs impressions et leurs émotions pour agir et pour interagir avec les autres. Elles aiment communiquer et s’expriment facilement. Ces personnes sont attentives aux autres, coopératives, collaboratrices, compréhensives, dévouées, sensibles, sympathiques, perspicaces, bienveillantes, communicatives, encourageantes.",
  avatar_f: "social.jpg",
  avatar_m: "social.jpg")
PersonalityRiasec.find_by name: "Social"


puts 'Creating training centers...'

puts 'Creating careers...'


csv_options = { col_sep: ';', headers: :first_row, encoding: "utf-8" }
filepath = 'metier2.csv'
filepath2 = 'training_centers.csv'
csv_options = { col_sep: ';', headers: :first_row, encoding: "utf-8" }
training_centers = []
CSV.parse(File.open(filepath2, 'r:iso-8859-1:utf-8') {|f| f.read}, csv_options) do |row|
  training_centers << {name: row['name'], address: row['address'], category: row['category'], postal_code: row['postal_code'], city: row['city']}
end

# count = 0
# puts training_centers.count
# training_centers.each_with_index do |training, index|
#   if count < 6
#     puts index
#     puts training[:name]
#     training_centers.delete_at(index)
#     count += 1
#     puts training_centers.count
#   end
# end

CSV.parse(File.open(filepath, 'r:iso-8859-1:utf-8') {|f| f.read}, csv_options) do |row|
puts row['personnalite'].capitalize
personality_riasec = PersonalityRiasec.find_by(name: row['personnalite'].capitalize)
c = Career.create!(title: "#{row['metier']}", personality_riasec: personality_riasec, category: "#{row['category']}", salary: "#{row['salaire']}")
count = 0
  training_centers.each_with_index do |training, index|
    if count < 6
      t = TrainingCenter.new(name: training[:name], address: training[:address], category: training[:category], postal_code: training[:postal_code], city: training[:city], career: c)
      if c.category == t.category #&& Geocoder.coordinates(t.full_address) != nil
        t.save
        training_centers.delete_at(index)
        count += 1
      else
      end
    end
  end
end

puts "end"

PgSearch::Multisearch.rebuild(Career)
PgSearch::Multisearch.rebuild(TrainingCenter)
