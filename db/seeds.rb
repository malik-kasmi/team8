TeamUser.destroy_all
Team.destroy_all
User.destroy_all

User.create!(username: "paul", email: "paul@team8.com", city: "Le Creusot", age: "26", gender: "male", password: "123456")
User.create!(username: "malik", email: "malik@team8.com", city: "Lyon", age: "17", gender: "male", password: "123456")
User.create!(username: "jordan", email: "jordan@team8.com", city: "Chicago", age: "45", gender: "male", password: "123456")
# johnson = User.create!(username: "johnson", email: "johnson@team8.com", city: "Washington", age: "51", gender: "male", password: "123456")
# bob = User.create!(username: "bob", email: "bob@team8.com", city: "Toronto", age: "34", password: "123456")


Team.create(name: "Paul's team", city: "Paris", description: "Super equipe", captain: User.find_by(username: "paul"))
Team.create(name: "Malik's team", city: "Lyon", description: "Won 6-0 against Nantes", captain: User.find_by(username: "malik"))
Team.create(name: "Chicago Bulls", city: "Chicago", description: "Best team ever", captain: User.find_by(username: "jordan"))

TeamUser.create(user: User.find_by(username: "paul"), team: Team.find_by(name: "Paul's team"), requester: User.find_by(username: "paul"), status: "accept")
TeamUser.create(user: User.find_by(username: "malik"), team: Team.find_by(name: "Malik's team"), requester: User.find_by(username: "malik"), status: "accept")
TeamUser.create(user: User.find_by(username: "jordan"), team: Team.find_by(name: "Chicago Bulls"), requester: User.find_by(username: "jordan"), status: "accept")
