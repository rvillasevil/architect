class AddPartidaIdToPresupuestos < ActiveRecord::Migration[5.0]
  def change
    add_column :presupuestos, :partida_id, :integer
  end
end
