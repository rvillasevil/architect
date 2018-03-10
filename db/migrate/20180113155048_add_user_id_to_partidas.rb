class AddUserIdToPartidas < ActiveRecord::Migration[5.0]
  def change
    add_column :partidas, :user_id, :integer
  end
end
