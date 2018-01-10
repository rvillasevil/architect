class DropTables < ActiveRecord::Migration[5.0]
  def change

  	remove_column :cocinas, :demo_quitar_azulejo
		remove_column :cocinas, :demo_quitar_baldosas
		remove_column :cocinas, :demo_falso_techo
		remove_column :cocinas, :demo_tabique

		remove_column :cocinas, :demo_inodoro
		remove_column :cocinas, :demo_bidet
		remove_column :cocinas, :demo_plato_ducha
		remove_column :cocinas, :demo_mampara
		remove_column :cocinas, :demo_mueble_bano
		remove_column :cocinas, :demo_banera

		remove_column :cocinas, :demo_mobiliario_cocina
		remove_column :cocinas, :demo_electrodomesticos

		remove_column :cocinas, :demo_frisos_madera
		remove_column :cocinas, :demo_muebles

  	remove_column :banos, :demo_quitar_azulejo
		remove_column :banos, :demo_quitar_baldosas
		remove_column :banos, :demo_falso_techo
		remove_column :banos, :demo_tabique

		remove_column :banos, :demo_inodoro
		remove_column :banos, :demo_bidet
		remove_column :banos, :demo_plato_ducha
		remove_column :banos, :demo_mampara
		remove_column :banos, :demo_mueble_bano
		remove_column :banos, :demo_banera

		remove_column :banos, :demo_mobiliario_cocina
		remove_column :banos, :demo_electrodomesticos

		remove_column :banos, :demo_frisos_madera
		remove_column :banos, :demo_muebles

  	remove_column :habitacions, :demo_quitar_azulejo
		remove_column :habitacions, :demo_quitar_baldosas
		remove_column :habitacions, :demo_falso_techo
		remove_column :habitacions, :demo_tabique

		remove_column :habitacions, :demo_inodoro
		remove_column :habitacions, :demo_bidet
		remove_column :habitacions, :demo_plato_ducha
		remove_column :habitacions, :demo_mampara
		remove_column :habitacions, :demo_mueble_bano
		remove_column :habitacions, :demo_banera

		remove_column :habitacions, :demo_mobiliario_cocina
		remove_column :habitacions, :demo_electrodomesticos

		remove_column :habitacions, :demo_frisos_madera
		remove_column :habitacions, :demo_muebles

  end
end
