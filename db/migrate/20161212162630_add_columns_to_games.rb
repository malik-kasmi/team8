class AddColumnsToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :location, :string
    add_column :games, :start_date, :string
  end
end
