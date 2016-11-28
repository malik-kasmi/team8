class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.text :description
      t.integer :captain_id

      t.timestamps
    end

    add_foreign_key :teams, :users, column: :captain_id
    add_index :teams, :captain_id
  end
end
