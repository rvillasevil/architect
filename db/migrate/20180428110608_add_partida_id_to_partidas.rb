class AddPartidaIdToPartidas < ActiveRecord::Migration[5.0]
  def change
    add_column :partidas, :partida_id, :integer
  end
end
