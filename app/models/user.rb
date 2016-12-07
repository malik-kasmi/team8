class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :managed_teams, class_name: "Team", foreign_key: 'captain_id' # as captain

  has_many :team_users
  has_many :joined_teams, through: :team_users, source: :team # as player that joined teams
end
