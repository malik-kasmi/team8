class TeamUser < ApplicationRecord
  belongs_to :user
  belongs_to :requester, class_name: "User", foreign_key: "requester_id"
  belongs_to :team
end
