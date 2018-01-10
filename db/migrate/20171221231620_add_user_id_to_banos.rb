class AddUserIdToBanos < ActiveRecord::Migration[5.0]
  def change
    add_column :banos, :user_id, :integer
  end
end
