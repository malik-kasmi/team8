class Game < ApplicationRecord
  belongs_to :requester, class_name: "Team", foreign_key: 'team1_id'
  belongs_to :opponent, class_name: "Team", foreign_key: 'team2_id'
  # belongs_to :winner, class_name: "Team", foreign_key: 'winner_id'

  scope :upcoming, -> { where(status: ["pending", "accept"]) }
end
