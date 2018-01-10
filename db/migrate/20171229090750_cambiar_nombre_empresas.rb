class CambiarNombreEmpresas < ActiveRecord::Migration[5.0]
  def change

  	rename_column :users, :autonomia, :ciudad_secundaria

  	rename_column :users, :provincia, :ciudad_terciaria
  	
  end
end
