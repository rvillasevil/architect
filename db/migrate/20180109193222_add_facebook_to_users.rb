class AddFacebookToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :pinterest, :string
  end
end
