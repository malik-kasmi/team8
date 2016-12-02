TeamUser.destroy_all
Team.destroy_all
User.destroy_all

paul = User.create!(username: "paul", email: "paul@team8.com", city: "Le Creusot", age: "26", gender: "male", password: "paul123")
malik = User.create!(username: "malik", email: "malik@team8.com", city: "Lyon", age: "17", gender: "male", password: "malik123")
jordan = User.create!(username: "jordan", email: "jordan@team8.com", city: "Chicago", age: "45", gender: "male", password: "jordan123")
johnson = User.create!(username: "johnson", email: "johnson@team8.com", city: "Washington", age: "51", gender: "male", password: "johnson123")
bob = User.create!(username: "bob", email: "bob@team8.com", city: "Toronto", age: "34", password: "bob123")


team_1 = Team.new(name: "Paul's team", city: "Paris", description: "Super equipe", captain: paul)
team_1.save!

team_2 = Team.new(name: "Malik's team", city: "Lyon", description: "Won 6-0 against Nantes", captain: malik)
team_2.save!

team_3 = Team.new(name: "Chicago Bulls", city: "Chicago", description: "Best team ever", captain: jordan)
team_3.save!
