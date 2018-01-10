class AddReformIdToHabitacions < ActiveRecord::Migration[5.0]
  def change
    add_column :habitacions, :reform_id, :integer
  end
end
