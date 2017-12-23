class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :genre, :string
    add_column :users, :website, :string
    add_column :users, :instrument, :string
  end
end
