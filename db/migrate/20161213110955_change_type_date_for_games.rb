class ChangeTypeDateForGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :start_date, :string
    add_column :games, :start_date, :date
  end
end
