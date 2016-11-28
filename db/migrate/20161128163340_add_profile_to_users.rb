class AddProfileToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :age, :string
    add_column :users, :city, :string
    add_column :users, :gender, :string
    add_column :users, :description, :string
    add_column :users, :favorite_position, :text
  end
end
