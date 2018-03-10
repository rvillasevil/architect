class AddPartidaImporteToPresupuestos < ActiveRecord::Migration[5.0]
  def change
    add_column :presupuestos, :partida_importe, :decimal, precision: 7, scale: 2
  end
end
