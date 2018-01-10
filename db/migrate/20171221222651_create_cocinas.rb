class CreateCocinas < ActiveRecord::Migration[5.0]
  def change
    create_table :cocinas do |t|
      t.string :nombre

      t.decimal :demo_quitar_azulejo, precision: 7, scale: 2
			t.decimal :demo_quitar_azulejo, precision: 7, scale: 2
			t.decimal :demo_quitar_baldosa, precision: 7, scale: 2
			t.decimal :demo_quitar_inodoro, precision: 7, scale: 2
			t.decimal :demo_quitar_bidet, precision: 7, scale: 2
			t.decimal :demo_quitar_plato_ducha, precision: 7, scale: 2
			t.decimal :demo_quitar_mampara, precision: 7, scale: 2
			t.decimal :demo_quitar_mueble_bano, precision: 7, scale: 2
			t.decimal :demo_quitar_banera, precision: 7, scale: 2
			t.decimal :demo_quitar_falso_techo, precision: 7, scale: 2
			t.decimal :demo_quitar_tabique, precision: 7, scale: 2

			t.decimal :demo_quitar_mobi_cocina, precision: 7, scale: 2
			t.decimal :demo_retir_electrodomesticos, precision: 7, scale: 2

			t.decimal :demo_quitar_mueble, precision: 7, scale: 2
			t.decimal :demo_friso_madera, precision: 7, scale: 2

			t.decimal :tub_termo_electrico, precision: 7, scale: 2
			t.decimal :tub_radiador, precision: 7, scale: 2
			t.decimal :tub_lavabo, precision: 7, scale: 2
			t.decimal :tub_ducha_banera, precision: 7, scale: 2
			t.decimal :tub_bidet, precision: 7, scale: 2
			t.decimal :tub_inodoro, precision: 7, scale: 2
			t.decimal :tub_colum_hidromasaje, precision: 7, scale: 2
			t.decimal :tub_lavabo_doble, precision: 7, scale: 2
			t.decimal :tub_jacuzzy, precision: 7, scale: 2
			t.decimal :tub_sauna, precision: 7, scale: 2
			t.decimal :tub_ducha_empotrada, precision: 7, scale: 2
			t.decimal :tub_toallero, precision: 7, scale: 2
			t.decimal :tub_reubicar_contador, precision: 7, scale: 2
			t.decimal :tub_lavadora, precision: 7, scale: 2
			t.decimal :tub_reubicar_inodoro, precision: 7, scale: 2
			t.decimal :tub_tipo

			t.decimal :tub_caldera, precision: 7, scale: 2
			t.decimal :tub_fregadero, precision: 7, scale: 2
			t.decimal :tub_lavavajillas, precision: 7, scale: 2
			t.decimal :tub_secadora, precision: 7, scale: 2

			t.decimal :elec_pto_luz_techo, precision: 7, scale: 2
			t.decimal :elec_pto_luz_pared, precision: 7, scale: 2
			t.decimal :elec_interr_simple, precision: 7, scale: 2
			t.decimal :elec_interr_doble, precision: 7, scale: 2
			t.decimal :elec_interr_triple, precision: 7, scale: 2
			t.decimal :elec_enchu_simple, precision: 7, scale: 2
			t.decimal :elec_enchu_doble, precision: 7, scale: 2
			t.decimal :elec_enchu_triple, precision: 7, scale: 2
			t.decimal :elec_reubicar_caja_luz, precision: 7, scale: 2
			t.decimal :elec_toma_lavadora, precision: 7, scale: 2
			t.decimal :elec_toma_ventilador_extractor, precision: 7, scale: 2

			t.decimal :elec_toma_horno_vitroceramica, precision: 7, scale: 2
			t.decimal :elec_toma_microondas, precision: 7, scale: 2
			t.decimal :elec_toma_frigorifico, precision: 7, scale: 2
			t.decimal :elec_toma_lavavajillas, precision: 7, scale: 2
			t.decimal :elec_toma_secadora, precision: 7, scale: 2
			
			t.decimal :elec_toma_telefono, precision: 7, scale: 2
			
			t.decimal :demo_quitar_azulejos, precision: 7, scale: 2
			t.decimal :demo_quitar_baldosas, precision: 7, scale: 2
			t.decimal :demo_falso_techo, precision: 7, scale: 2
			t.decimal :demo_tabique, precision: 7, scale: 2

			t.decimal :demo_inodoro, precision: 7, scale: 2
			t.decimal :demo_bidet, precision: 7, scale: 2
			t.decimal :demo_plato_ducha, precision: 7, scale: 2
			t.decimal :demo_mampara, precision: 7, scale: 2
			t.decimal :demo_mueble_bano, precision: 7, scale: 2
			t.decimal :demo_banera, precision: 7, scale: 2

			t.decimal :demo_mobiliario_cocina, precision: 7, scale: 2
			t.decimal :demo_electrodomesticos, precision: 7, scale: 2

			t.decimal :demo_frisos_madera, precision: 7, scale: 2
			t.decimal :demo_muebles, precision: 7, scale: 2

			t.decimal :alb_azulejo, precision: 7, scale: 2
			t.decimal :alb_tipo_azulejo, precision: 7, scale: 2
			t.decimal :alb_baldosa, precision: 7, scale: 2
			t.decimal :alb_tipo_baldosa, precision: 7, scale: 2
			t.decimal :alb_techo_pladur, precision: 7, scale: 2
			t.decimal :alb_tabique_ladriyeso, precision: 7, scale: 2
			t.decimal :alb_tabique_pladur, precision: 7, scale: 2
			t.decimal :alb_tabique_fabrica, precision: 7, scale: 2
			t.decimal :alb_tabique_paves, precision: 7, scale: 2
			t.decimal :alb_nivelacion_pared, precision: 7, scale: 2

			t.decimal :mont_sani_mampara, precision: 7, scale: 2
			t.decimal :mont_sani_mueble_bano, precision: 7, scale: 2
			t.decimal :mont_sani_banera, precision: 7, scale: 2
			t.decimal :mont_sani_plato_ducha, precision: 7, scale: 2
			t.decimal :mont_sani_bidet, precision: 7, scale: 2
			t.decimal :mont_sani_inodoro_normal, precision: 7, scale: 2
			t.decimal :mont_sani_inodoro_suspendido, precision: 7, scale: 2
			t.decimal :mont_sani_inodoro_encastrado, precision: 7, scale: 2
			t.decimal :mont_sani_grifo_ducha, precision: 7, scale: 2
			t.decimal :mont_sani_grifo_banera, precision: 7, scale: 2
			t.decimal :mont_sani_acceso_atornillado, precision: 7, scale: 2
			t.decimal :mont_sani_colum_hidromasaje, precision: 7, scale: 2
			t.decimal :mont_sani_cabina_ducha, precision: 7, scale: 2
			t.decimal :mont_sani_plato_ducha_obra, precision: 7, scale: 2
			t.decimal :mont_sani_lavabo_pedestal, precision: 7, scale: 2

			t.decimal :mont_electro_mueble_alto_cocina, precision: 7, scale: 2
			t.decimal :mont_electro_mueble_bajo_cocina, precision: 7, scale: 2
			t.decimal :mont_electro_horno_electrico, precision: 7, scale: 2
			t.decimal :mont_electro_placa_vitro, precision: 7, scale: 2
			t.decimal :mont_electro_placa_electrica, precision: 7, scale: 2
			t.decimal :mont_electro_lavadora, precision: 7, scale: 2
			t.decimal :mont_electro_frigorifico, precision: 7, scale: 2
			t.decimal :mont_electro_lavavajillas, precision: 7, scale: 2
			t.decimal :mont_electro_microondas, precision: 7, scale: 2
			t.decimal :mont_electro_secadora, precision: 7, scale: 2

			t.decimal :mont_fregadero, precision: 7, scale: 2
			t.decimal :mont_grifo_fregadero, precision: 7, scale: 2

			t.decimal :colo_pmarcha_termo_elect_a, precision: 7, scale: 2
			t.decimal :colo_pmarcha_termo_elect_b, precision: 7, scale: 2
			t.decimal :colo_pmarcha_termo_elect_c, precision: 7, scale: 2
			t.decimal :colo_pmarcha_termo_elect_d, precision: 7, scale: 2
			t.decimal :colo_pmarcha_termo_elect_e, precision: 7, scale: 2
			t.decimal :colo_pmarcha_termo_elect_f, precision: 7, scale: 2

			t.decimal :colo_pmarcha_calde_atmos, precision: 7, scale: 2
			t.decimal :colo_pmarcha_calde_bajo_nox, precision: 7, scale: 2
			t.decimal :colo_pmarcha_calde_estanca, precision: 7, scale: 2

			t.decimal :techo_pintar, precision: 7, scale: 2
			t.decimal :techo_tipo_pintura, precision: 7, scale: 2
			t.decimal :techo_alisar, precision: 7, scale: 2
			t.decimal :techo_reparar_humedad, precision: 7, scale: 2

			t.decimal :pared_empapelar, precision: 7, scale: 2
			t.decimal :pared_quitar_papel, precision: 7, scale: 2
			t.decimal :pared_alisar, precision: 7, scale: 2
			t.decimal :pared_pintar, precision: 7, scale: 2
			t.decimal :pared_reparar_humedad, precision: 7, scale: 2

			t.decimal :carpin_friso, precision: 7, scale: 2

			t.decimal :puerta_colocar, precision: 7, scale: 2
			t.decimal :puerta_tipo, precision: 7, scale: 2
			t.decimal :puerta_cambio_precerco, precision: 7, scale: 2

			t.decimal :ventana_colocar, precision: 7, scale: 2
			t.decimal :ventana_tipo, precision: 7, scale: 2
			t.decimal :ventana_contraventana, precision: 7, scale: 2

      t.timestamps
    end
  end
end
