class AddUserValoradoToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :user_valorado, :integer
  end
end
