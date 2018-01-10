class AddDemoQuitarAzulejo < ActiveRecord::Migration[5.0]
  def change
  	add_column :cocinas, :demo_quitar_azulejo, :decimal, precision: 7, scale: 2
  	add_column :banos, :demo_quitar_azulejo, :decimal, precision: 7, scale: 2
  	add_column :habitacions, :demo_quitar_azulejo, :decimal, precision: 7, scale: 2
  end
end
