class AddEmpresaToPartidas < ActiveRecord::Migration[5.0]
  def change
    add_column :partidas, :empresa, :string
  end
end
