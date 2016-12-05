class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :team2_id, foreign_key: true
      t.string :status
      t.integer :winner_id
      t.integer :winner_score
      t.integer :loser_score
      t.integer :team1_id, foreign_key: true

      t.timestamps
    end
  end
end
