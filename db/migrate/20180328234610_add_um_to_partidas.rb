class AddUmToPartidas < ActiveRecord::Migration[5.0]
  def change
    add_column :partidas, :um, :string
    add_column :partidas, :desc_tecnica, :string
    add_column :partidas, :material, :string
    add_column :partidas, :cond_previas, :string
    add_column :partidas, :fases, :string
    add_column :partidas, :cond_terminacion, :string
    add_column :partidas, :man_obra, :string
    add_column :partidas, :rendimiento, :decimal, precision: 5, scale: 2
    add_column :partidas, :mat_incluidos, :string
    add_column :partidas, :mat_aportar, :string
    add_column :partidas, :importe, :decimal, precision: 5, scale: 2
  end
end
