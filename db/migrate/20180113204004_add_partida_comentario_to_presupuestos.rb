class AddPartidaComentarioToPresupuestos < ActiveRecord::Migration[5.0]
  def change
    add_column :presupuestos, :partida_comentario, :string
  end
end
