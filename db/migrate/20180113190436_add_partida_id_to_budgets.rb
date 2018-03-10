class AddPartidaIdToBudgets < ActiveRecord::Migration[5.0]
  def change
    add_column :budgets, :partida_id, :integer
  end
end
