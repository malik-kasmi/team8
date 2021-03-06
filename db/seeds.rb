puts "Cleaning database..."
Game.destroy_all
TeamUser.destroy_all
Team.destroy_all
User.destroy_all

# User.create!(email: '#@gmail.com', password: '123456', password_confirmation: '123456', username: "paul", email: "paul@gmail.com", city: "Le Creusot", age: "26", gender: "male", password: "123456")
# User.create!(email: '#@gmail.com', password: '123456', password_confirmation: '123456', username: "malik", email: "malik@team8.com", city: "Lyon", age: "17", gender: "male", password: "123456")
# User.create!(email: '#@gmail.com', password: '123456', password_confirmation: '123456', username: "jordan", email: "jordan@team8.com", city: "Chicago", age: "45", gender: "male", password: "123456")
# # johnson = email: '#@gmail.com', password: '123456', password_confirmation: '123456', User.create!(username: "johnson", email: "johnson@team8.com", city: "Washington", age: "51", gender: "male", password: "123456")
# # bob = email: '#@gmail.com', password: '123456', password_confirmation: '123456', User.create!(username: "bob", email: "bob@team8.com", city: "Toronto", age: "34", password: "123456")


# Team.create(name: "Paul's team", city: "Paris", description: "Super equipe", captain: User.find_by(username: "paul"))
# Team.create(name: "Malik's team", city: "Lyon", description: "Won 6-0 against Nantes", captain: User.find_by(username: "malik"))
# Team.create(name: "Chicago Bulls", city: "Chicago", description: "Best team ever", captain: User.find_by(username: "jordan"))

# TeamUser.create(user: User.find_by(username: "paul"), team: Team.find_by(name: "Paul's team"), requester: User.find_by(username: "paul"), status: "accept")
# TeamUser.create(user: User.find_by(username: "malik"), team: Team.find_by(name: "Malik's team"), requester: User.find_by(username: "malik"), status: "accept")
# TeamUser.create(user: User.find_by(username: "jordan"), team: Team.find_by(name: "Chicago Bulls"), requester: User.find_by(username: "jordan"), status: "accept")

puts "Creating Users..."
paul = User.create!(email: 'paul@gmail.com', password: '123456', password_confirmation: '123456', username: 'Paul', first_name: 'Paul', last_name: 'Vaublanc', favorite_position: 'Meneur', age: 25, photo: File.open(Rails.root.join('db/fixtures/images/players/paul.jpg')), gender: 'male')
malik = User.create!(email: 'malik@gmail.com', password: '123456', password_confirmation: '123456', username: 'Malik', first_name: 'Malik', last_name: 'Kasmi', favorite_position: 'Arriere', age: 30, photo: File.open(Rails.root.join('db/fixtures/images/players/malik.jpg')), gender: 'male')
james = User.create!(email: 'james@gmail.com', password: '123456', password_confirmation: '123456', username: 'James', first_name: 'James', last_name: 'Lebron', favorite_position: 'Ailier fort', age: 32, photo: File.open(Rails.root.join('db/fixtures/images/players/james.jpg')), gender: 'male')
stephen = User.create!(email: 'stephen@gmail.com', password: '123456', password_confirmation: '123456', username: 'Stephen', first_name: 'Stephen', last_name: 'Curry', favorite_position: 'Ailier', age: 28, photo: File.open(Rails.root.join('db/fixtures/images/players/curry.jpg')), gender: 'male')
zinedine = User.create!(email: 'zinedine@gmail.com', password: '123456', password_confirmation: '123456', username: 'Zinedine', first_name: 'Zinedine', last_name: 'Zidane', favorite_position: 'Meneur', age: 39, photo: File.open(Rails.root.join('db/fixtures/images/players/zidane.jpg')), gender: 'male')
laurent = User.create!(email: 'laurent@gmail.com', password: '123456', password_confirmation: '123456', username: 'Laurent', first_name: 'Laurent', last_name: 'Blanc', favorite_position: 'Ailier', age: 41, photo: File.open(Rails.root.join('db/fixtures/images/players/laurent.jpg')), gender: 'male')
didier = User.create!(email: 'didier@gmail.com', password: '123456', password_confirmation: '123456', username: 'Didier', first_name: 'Didier', last_name: 'Deschamps', favorite_position: 'Pivot', age: 42, photo: File.open(Rails.root.join('db/fixtures/images/players/dider.jpg')), gender: 'male')
tim = User.create!(email: 'tim@gmail.com', password: '123456', password_confirmation: '123456', username: 'Tim', first_name: 'Tim', last_name: 'Garcia', favorite_position: 'Meneur', age: 27, photo: File.open(Rails.root.join('db/fixtures/images/players/tim.jpg')), gender: 'male')
sarah = User.create!(email: 'sarah@gmail.com', password: '123456', password_confirmation: '123456', username: 'Sarah', first_name: 'Sarah', last_name: 'Jeigermeister', favorite_position: 'Ailier', age: 30, photo: File.open(Rails.root.join('db/fixtures/images/players/sarah.jpg')), gender: 'male')
tom = User.create!(email: 'tom@gmail.com', password: '123456', password_confirmation: '123456', username: 'Tom', first_name: 'Tom', last_name: 'Jerry', favorite_position: 'Pivot', age: 26, photo: File.open(Rails.root.join('db/fixtures/images/players/tom.jpg')), gender: 'male')
pierre = User.create!(email: 'pierre@gmail.com', password: '123456', password_confirmation: '123456', username: 'Pierre', first_name: 'Pierre', last_name: 'Vanneau', favorite_position: 'Ailier fort', age: 28, photo: File.open(Rails.root.join('db/fixtures/images/players/pierre.jpg')), gender: 'male')
raph = User.create!(email: 'raph@gmail.com', password: '123456', password_confirmation: '123456', username: 'Raph', first_name: 'Raph', last_name: 'Coudin', favorite_position: 'Meneur', age: 26, photo: File.open(Rails.root.join('db/fixtures/images/players/raph.jpg')), gender: 'male')
guillaume = User.create!(email: 'guillaume@gmail.com', password: '123456', password_confirmation: '123456', username: 'Guillaume', first_name: 'Guillaume', last_name: 'Cabanel', favorite_position: 'Pivot', age: 28, photo: File.open(Rails.root.join('db/fixtures/images/players/guillaume.jpg')), gender: 'male')
julie = User.create!(email: 'julie@gmail.com', password: '123456', password_confirmation: '123456', username: 'Julie',  first_name: 'Julie', last_name: ',Moiton', favorite_position: 'Ailier fort', age: 33, photo: File.open(Rails.root.join('db/fixtures/images/players/julie.jpg')), gender: 'male')
isaure = User.create!(email: 'isaure@gmail.com', password: '123456', password_confirmation: '123456', username: 'Isaure', first_name: 'Isaure', last_name: 'Truchy', favorite_position: 'Ailier', age: 23, photo: File.open(Rails.root.join('db/fixtures/images/players/isaure.jpg')), gender: 'male')
mathieu = User.create!(email: 'mathieu@gmail.com', password: '123456', password_confirmation: '123456', username: 'Mathieu', first_name: 'Mathieu', last_name: 'Valbuena', favorite_position: 'Meneur', age: 30, photo: File.open(Rails.root.join('db/fixtures/images/players/mathieu.jpg')), gender: 'male')
mael = User.create!(email: 'mael@gmail.com', password: '123456', password_confirmation: '123456', username: 'Mael', first_name: 'Mael', last_name: 'Wagon', favorite_position: 'Ailier Fort', age: 44, photo: File.open(Rails.root.join('db/fixtures/images/players/mael.jpg')), gender: 'male')
remi = User.create!(email: 'remi@gmail.com', password: '123456', password_confirmation: '123456', username: 'Remi', first_name: 'Remi', last_name: 'Castel', favorite_position: 'Pivot', age: 29, photo: File.open(Rails.root.join('db/fixtures/images/players/remi.jpg')), gender: 'male')
alex = User.create!(email: 'alex@gmail.com', password: '123456', password_confirmation: '123456', username: 'Alex', first_name: 'Alex', last_name: 'Costini', favorite_position: 'Arriere', age: 23, photo: File.open(Rails.root.join('db/fixtures/images/players/alex.jpg')), gender: 'male')
michael = User.create!(email: 'michael@gmail.com', password: '123456', password_confirmation: '123456', username: 'Michael', first_name: 'Michael', last_name: 'Jordan', favorite_position: 'Arriere', age: 45, photo: File.open(Rails.root.join('db/fixtures/images/players/jordan.jpg')), gender: 'male')
dennis = User.create!(email: 'dennis@gmail.com', password: '123456', password_confirmation: '123456', username: 'Dennis', first_name: 'Dennis', last_name: 'Rodman', favorite_position: 'Ailier Fort', age: 43, photo: File.open(Rails.root.join('db/fixtures/images/players/dennis.jpg')), gender: 'male')
scottie = User.create!(email: 'scottie@gmail.com', password: '123456', password_confirmation: '123456', username: 'Scottie', first_name: 'Scottie', last_name: 'Pippen', favorite_position: 'Ailier', age: 46, photo: File.open(Rails.root.join('db/fixtures/images/players/scottie.jpg')), gender: 'male')
jean = User.create!(email: 'jean@gmail.com', password: '123456', password_confirmation: '123456', username: 'Jean', first_name: 'Jean', last_name: 'Blanc', favorite_position: 'Meneur', age: 20, photo: File.open(Rails.root.join('db/fixtures/images/players/jean.jpg')), gender: 'male')
jeremy = User.create!(email: 'jeremy@gmail.com', password: '123456', password_confirmation: '123456', username: 'Jeremy', first_name: 'Jeremy', last_name: 'Blanc', favorite_position: 'Meneur', age: 20, photo: File.open(Rails.root.join('db/fixtures/images/players/jeremy.jpg')), gender: 'male')
tony = User.create!(email: 'tony@gmail.com', password: '123456', password_confirmation: '123456', username: 'Tony', first_name: 'Tony', last_name: 'Parker', favorite_position: 'Meneur', age: 28, photo: File.open(Rails.root.join('db/fixtures/images/players/parker.jpg')), gender: 'male')
rudy = User.create!(email: 'rudy@gmail.com', password: '123456', password_confirmation: '123456', username: 'Rudy', first_name: 'Rudy', last_name: 'Gobert', favorite_position: 'Pivot', age: 27, photo: File.open(Rails.root.join('db/fixtures/images/players/gobert.jpg')), gender: 'male')

puts "Creating Teams..."
raptors = Team.create!(name: 'RAPTORS', captain: paul, city: 'Nantes', description: "Un match, une victoire", photo: File.open(Rails.root.join('db/fixtures/images/teams/raptors.jpg')))
france_98 = Team.create!(name: 'France 98', captain: zinedine, city: 'Angers', description: "Allez les bleus ", photo: File.open(Rails.root.join('db/fixtures/images/teams/france.jpg')))
the_krowd = Team.create!(name: 'The krowd', captain: tim, city: 'Nantes', description: "Une équipe, un Canap", photo: File.open(Rails.root.join('db/fixtures/images/teams/krowd.jpg')))
hedge_news = Team.create!(name: 'HedgeNews', captain: raph, city: 'Nantes', description: "100 % good style", photo: File.open(Rails.root.join('db/fixtures/images/teams/hedge.jpg')))
mac_flight = Team.create!(name: 'MacFlight', captain: mathieu, city: 'Paris', description: "un avion et une api rapide", photo: File.open(Rails.root.join('db/fixtures/images/teams/macflight.jpg')))
bulls = Team.create!(name: 'Bulls', captain: michael, city: 'Paris', description: "Les Bulls donnent des ailes", photo: File.open(Rails.root.join('db/fixtures/images/teams/bulls.jpg')))
twins = Team.create!(name: 'Twins', captain: jeremy,  city: 'Bordeaux', description: "A deux la vie est mieux", photo: File.open(Rails.root.join('db/fixtures/images/teams/twins.jpg')))
france_basket = Team.create!(name: 'France Basket', captain: tony, city: 'Paris', description: "Tous ensemble", photo: File.open(Rails.root.join('db/fixtures/images/teams/france_basket.jpg')))

puts "Creating Team Users..."
TeamUser.create!(user: paul, team: raptors, requester: raptors.captain, status: 'accept')
TeamUser.create!(user: malik, team: raptors, requester: raptors.captain, status: 'accept')
TeamUser.create!(user: james, team: raptors, requester: raptors.captain, status: 'accept')
TeamUser.create!(user: stephen, team: raptors, requester: raptors.captain, status: 'accept')
TeamUser.create!(user: zinedine, team: france_98, requester: france_98.captain, status: 'accept')
TeamUser.create!(user: laurent, team: france_98, requester: france_98.captain, status: 'accept')
TeamUser.create!(user: didier, team: france_98, requester: france_98.captain, status: 'accept')
TeamUser.create!(user: tim, team: the_krowd, requester: the_krowd.captain, status: 'accept')
TeamUser.create!(user: sarah, team: the_krowd, requester: the_krowd.captain, status: 'accept')
TeamUser.create!(user: tom, team: the_krowd, requester: the_krowd.captain, status: 'accept')
TeamUser.create!(user: pierre, team: the_krowd, requester: the_krowd.captain, status: 'accept')
TeamUser.create!(user: raph, team: hedge_news, requester: hedge_news.captain, status: 'accept')
TeamUser.create!(user: guillaume, team: hedge_news, requester: hedge_news.captain, status: 'accept')
TeamUser.create!(user: julie, team: hedge_news, requester: hedge_news.captain, status: 'accept')
TeamUser.create!(user: isaure, team: hedge_news, requester: hedge_news.captain, status: 'accept')
TeamUser.create!(user: mathieu, team: mac_flight, requester: mac_flight.captain, status: 'accept')
TeamUser.create!(user: mael, team: mac_flight, requester: mac_flight.captain, status: 'accept')
TeamUser.create!(user: remi, team: mac_flight, requester: mac_flight.captain, status: 'accept')
TeamUser.create!(user: alex, team: mac_flight, requester: mac_flight.captain, status: 'accept')
TeamUser.create!(user: michael, team: bulls, requester: bulls.captain, status: 'accept')
TeamUser.create!(user: dennis, team: bulls, requester: bulls.captain, status: 'accept')
TeamUser.create!(user: scottie, team: bulls, requester: bulls.captain, status: 'accept')
TeamUser.create!(user: jean, team: twins, requester: twins.captain, status: 'accept')
TeamUser.create!(user: jeremy, team: twins, requester: twins.captain, status: 'accept')
TeamUser.create!(user: tony, team: france_basket, requester: france_basket.captain, status: 'accept')
TeamUser.create!(user: rudy, team: france_basket, requester: france_basket.captain, status: 'accept')

puts "Creating Games..."
Game.create!(requester: mac_flight, opponent: bulls, status: 'done', winner: bulls, winner_score: 102, loser_score: 100, location: 'Paris', start_date: '2016-12-03')
Game.create!(requester: mac_flight, opponent: france_98, status: 'done', winner: mac_flight, winner_score: 100, loser_score: 82, location: 'Paris', start_date: '2016-12-10')
Game.create!(requester: mac_flight, opponent: the_krowd, status: 'done', winner: mac_flight, winner_score: 40, loser_score: 20, location: 'Paris', start_date: '2016-12-09')
Game.create!(requester: bulls, opponent: raptors, status: 'done', winner: raptors, winner_score: 56, loser_score: 24, location: 'Paris', start_date: '2016-12-03')
Game.create!(requester: france_basket, opponent: twins, status: 'done', winner: france_basket, winner_score: 78, loser_score: 65, location: 'Paris', start_date: '2016-12-07')
Game.create!(requester: france_basket, opponent: hedge_news, status: 'done', winner: france_basket,  winner_score: 45, loser_score: 12, location: 'Paris', start_date: '2016-12-11')
Game.create!(requester: france_basket, opponent: mac_flight, status: 'done', winner: france_basket,  winner_score: 78, loser_score: 10, location: 'Paris', start_date: '2016-12-04')
Game.create!(requester: bulls, opponent: france_98, status: 'done', winner: bulls, winner_score: 112, loser_score: 110, location: 'Paris', start_date: '2016-12-01')
Game.create!(requester: bulls, opponent: france_basket, status: 'done', winner: france_basket, winner_score: 76, loser_score: 58, location: 'Paris', start_date: '2016-12-02')
Game.create!(requester: mac_flight, opponent: france_basket, status: 'done', winner: france_basket, winner_score: 98, loser_score: 76, location: 'Paris', start_date: '2016-12-12')
Game.create!(requester: mac_flight, opponent: twins, status: 'done', winner: twins, winner_score: 44, loser_score: 32, location: 'Paris', start_date: '2016-12-13')
Game.create!(requester: raptors, opponent: twins, status: 'done', winner: raptors, winner_score: 88, loser_score: 75, location: 'Paris', start_date: '2016-12-14')
Game.create!(requester: france_98, opponent: raptors, status: 'pending', location: 'Paris', start_date: '2016-12-21')
Game.create!(requester: raptors, opponent: mac_flight , status: 'accept', location: 'Paris', start_date: '2016-12-15')

puts "Finished!"
