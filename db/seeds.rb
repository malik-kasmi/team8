Team.destroy_all
User.destroy_all

captain_paul = User.create!(username: "paul", email: "paul@captain.com", password: "123456")
captain_malik = User.create!(username: "malik", email: "malik@captain.com", password: "789456")
captain_test = User.create!(username: "test", email: "test@captain.com", password: "1478541")



team_1 = Team.new(name: "team1", city: "Paris", description: "Super equipe", captain: captain_paul)
team_1.save!

team_2 = Team.new(name: "team2", city: "Nantes", description: "cool", captain: captain_malik)
team_2.save!

team_3 = Team.new(name: "team3", city: "Angers", description: "ok", captain: captain_test)
team_3.save!
