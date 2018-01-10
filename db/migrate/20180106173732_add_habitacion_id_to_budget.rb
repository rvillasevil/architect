class AddHabitacionIdToBudget < ActiveRecord::Migration[5.0]
  def change
    add_column :budgets, :habitacion_id, :integer
  end
end
