class AddUserIdToHabitacions < ActiveRecord::Migration[5.0]
  def change
    add_column :habitacions, :user_id, :integer
  end
end
