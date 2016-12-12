class Team < ApplicationRecord
  belongs_to :captain, class_name: "User", foreign_key: 'captain_id'
  has_many :team_users
  has_many :players, through: :team_users, source: :user
  has_many :game_1s, class_name: "Game", foreign_key: :team1_id
  has_many :game_2s, class_name: "Game", foreign_key: :team2_id
  has_many :wins, class_name: "Game", foreign_key: :winner_id

  validates :name, presence: true, uniqueness: true
  validates :city, presence: true

  def games
    games_array = self.game_1s + self.game_2s
    games_array.compact
  end

end
