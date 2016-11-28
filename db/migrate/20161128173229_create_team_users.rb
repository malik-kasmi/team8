class CreateTeamUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_users do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true
      # t.references :requester, foreign_key: true
      t.integer :requester_id

      t.timestamps
    end

    add_foreign_key :team_users, :users, column: :requester_id
    add_index :team_users, :requester_id
  end
end
