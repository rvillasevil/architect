class CreatePresupuestos < ActiveRecord::Migration[5.0]
  def change
    create_table :presupuestos do |t|
      t.integer :user_id
      t.integer :reform_id
      t.integer :habitacion_id

      t.decimal :demo_quitar_azulejo, precision: 7, scale: 2
      t.string :demo_quitar_azulejo_comment
			t.decimal :demo_quitar_azulejo, precision: 7, scale: 2
			t.string :demo_quitar_azulejo_comment
			t.decimal :demo_quitar_baldosa, precision: 7, scale: 2
			t.string :demo_quitar_baldosa_comment
			t.decimal :demo_quitar_inodoro, precision: 7, scale: 2
			t.string :demo_quitar_inodoro_comment
			t.decimal :demo_quitar_bidet, precision: 7, scale: 2
			t.string :demo_quitar_bidet_comment
			t.decimal :demo_quitar_plato_ducha, precision: 7, scale: 2
			t.string :demo_quitar_plato_ducha_comment
			t.decimal :demo_quitar_mampara, precision: 7, scale: 2
			t.string :demo_quitar_mampara_comment
			t.decimal :demo_quitar_mueble_bano, precision: 7, scale: 2
			t.string :demo_quitar_mueble_bano_comment
			t.decimal :demo_quitar_banera, precision: 7, scale: 2
			t.string :demo_quitar_banera_comment
			t.decimal :demo_quitar_falso_techo, precision: 7, scale: 2
			t.string :demo_quitar_falso_techo_comment
			t.decimal :demo_quitar_tabique, precision: 7, scale: 2
			t.string :demo_quitar_tabique_comment

			t.decimal :demo_quitar_mobi_cocina, precision: 7, scale: 2
			t.string :demo_quitar_mobi_cocina_comment
			t.decimal :demo_retir_electrodomesticos, precision: 7, scale: 2
			t.string :demo_retir_electrodomesticos_comment

			t.decimal :demo_quitar_mueble, precision: 7, scale: 2
			t.string :demo_quitar_mueble_comment
			t.decimal :demo_friso_madera, precision: 7, scale: 2
			t.string :demo_friso_madera_comment

			t.decimal :tub_termo_electrico, precision: 7, scale: 2
			t.string :tub_termo_electrico_comment
			t.decimal :tub_radiador, precision: 7, scale: 2
			t.string :tub_radiador_comment
			t.decimal :tub_lavabo, precision: 7, scale: 2
			t.string :tub_lavabo_comment
			t.decimal :tub_ducha_banera, precision: 7, scale: 2
			t.string :tub_ducha_banera_comment
			t.decimal :tub_bidet, precision: 7, scale: 2
			t.string :tub_bidet_comment
			t.decimal :tub_inodoro, precision: 7, scale: 2
			t.string :tub_inodoro_comment
			t.decimal :tub_colum_hidromasaje, precision: 7, scale: 2
			t.string :tub_colum_hidromasaje_comment
			t.decimal :tub_lavabo_doble, precision: 7, scale: 2
			t.string :tub_lavabo_doble_comment
			t.decimal :tub_jacuzzy, precision: 7, scale: 2
			t.string :tub_jacuzzy_comment
			t.decimal :tub_sauna, precision: 7, scale: 2
			t.string :tub_sauna_comment
			t.decimal :tub_ducha_empotrada, precision: 7, scale: 2
			t.string :tub_ducha_empotrada_comment
			t.decimal :tub_toallero, precision: 7, scale: 2
			t.string :tub_toallero_comment
			t.decimal :tub_reubicar_contador, precision: 7, scale: 2
			t.string :tub_reubicar_contador_comment
			t.decimal :tub_lavadora, precision: 7, scale: 2
			t.string :tub_lavadora_comment
			t.decimal :tub_reubicar_inodoro, precision: 7, scale: 2
			t.string :tub_reubicar_inodoro_comment
			t.decimal :tub_tipo

			t.decimal :tub_caldera, precision: 7, scale: 2
			t.string :tub_caldera_comment
			t.decimal :tub_fregadero, precision: 7, scale: 2
			t.string :tub_fregadero_comment
			t.decimal :tub_lavavajillas, precision: 7, scale: 2
			t.string :tub_lavavajillas_comment
			t.decimal :tub_secadora, precision: 7, scale: 2
			t.string :tub_secadora_comment

			t.decimal :elec_pto_luz_techo, precision: 7, scale: 2
			t.string :elec_pto_luz_techo_comment
			t.decimal :elec_pto_luz_pared, precision: 7, scale: 2
			t.string :elec_pto_luz_pared_comment
			t.decimal :elec_interr_simple, precision: 7, scale: 2
			t.string :elec_interr_simple_comment
			t.decimal :elec_interr_doble, precision: 7, scale: 2
			t.string :elec_interr_doble_comment
			t.decimal :elec_interr_triple, precision: 7, scale: 2
			t.string :elec_interr_triple_comment
			t.decimal :elec_enchu_simple, precision: 7, scale: 2
			t.string :elec_enchu_simple_comment
			t.decimal :elec_enchu_doble, precision: 7, scale: 2
			t.string :elec_enchu_doble_comment
			t.decimal :elec_enchu_triple, precision: 7, scale: 2
			t.string :elec_enchu_triple_comment
			t.decimal :elec_reubicar_caja_luz, precision: 7, scale: 2
			t.string :elec_reubicar_caja_luz_comment
			t.decimal :elec_toma_lavadora, precision: 7, scale: 2
			t.string :elec_toma_lavadora_comment
			t.decimal :elec_toma_ventilador_extractor, precision: 7, scale: 2
			t.string :elec_toma_ventilador_extractor_comment

			t.decimal :elec_toma_horno_vitroceramica, precision: 7, scale: 2
			t.string :elec_toma_horno_vitroceramica_comment
			t.decimal :elec_toma_microondas, precision: 7, scale: 2
			t.string :elec_toma_microondas_comment
			t.decimal :elec_toma_frigorifico, precision: 7, scale: 2
			t.string :elec_toma_frigorifico_comment
			t.decimal :elec_toma_lavavajillas, precision: 7, scale: 2
			t.string :elec_toma_lavavajillas_comment
			t.decimal :elec_toma_secadora, precision: 7, scale: 2
			t.string :elec_toma_secadora_comment
			
			t.decimal :elec_toma_telefono, precision: 7, scale: 2
			t.string :elec_toma_telefono_comment
			
			t.decimal :demo_quitar_azulejos, precision: 7, scale: 2
			t.string :demo_quitar_azulejos_comment
			t.decimal :demo_quitar_baldosas, precision: 7, scale: 2
			t.string :demo_quitar_baldosas_comment
			t.decimal :demo_falso_techo, precision: 7, scale: 2
			t.string :demo_falso_techo_comment
			t.decimal :demo_tabique, precision: 7, scale: 2
			t.string :demo_tabique_comment

			t.decimal :demo_inodoro, precision: 7, scale: 2
			t.string :demo_inodoro_comment
			t.decimal :demo_bidet, precision: 7, scale: 2
			t.string :demo_bidet_comment
			t.decimal :demo_plato_ducha, precision: 7, scale: 2
			t.string :demo_plato_ducha_comment
			t.decimal :demo_mampara, precision: 7, scale: 2
			t.string :demo_mampara_comment
			t.decimal :demo_mueble_bano, precision: 7, scale: 2
			t.string :demo_mueble_bano_comment
			t.decimal :demo_banera, precision: 7, scale: 2
			t.string :demo_banera_comment

			t.decimal :demo_mobiliario_cocina, precision: 7, scale: 2
			t.string :demo_mobiliario_cocina_comment
			t.decimal :demo_electrodomesticos, precision: 7, scale: 2
			t.string :demo_electrodomesticos_comment

			t.decimal :demo_frisos_madera, precision: 7, scale: 2
			t.string :demo_frisos_madera_comment
			t.decimal :demo_muebles, precision: 7, scale: 2
			t.string :demo_muebles_comment

			t.decimal :alb_azulejo, precision: 7, scale: 2
			t.string :alb_azulejo_comment
			t.decimal :alb_tipo_azulejo, precision: 7, scale: 2
			t.string :alb_tipo_azulejo_comment
			t.decimal :alb_baldosa, precision: 7, scale: 2
			t.string :alb_baldosa_comment
			t.decimal :alb_tipo_baldosa, precision: 7, scale: 2
			t.string :alb_tipo_baldosa_comment
			t.decimal :alb_techo_pladur, precision: 7, scale: 2
			t.string :alb_techo_pladur_comment
			t.decimal :alb_tabique_ladriyeso, precision: 7, scale: 2
			t.string :alb_tabique_ladriyeso_comment
			t.decimal :alb_tabique_pladur, precision: 7, scale: 2
			t.string :alb_tabique_pladur_comment
			t.decimal :alb_tabique_fabrica, precision: 7, scale: 2
			t.string :alb_tabique_fabrica_comment
			t.decimal :alb_tabique_paves, precision: 7, scale: 2
			t.string :alb_tabique_paves_comment
			t.decimal :alb_nivelacion_pared, precision: 7, scale: 2
			t.string :alb_nivelacion_pared_comment

			t.decimal :mont_sani_mampara, precision: 7, scale: 2
			t.string :mont_sani_mampara_comment
			t.decimal :mont_sani_mueble_bano, precision: 7, scale: 2
			t.string :mont_sani_mueble_bano_comment
			t.decimal :mont_sani_banera, precision: 7, scale: 2
			t.string :mont_sani_banera_comment
			t.decimal :mont_sani_plato_ducha, precision: 7, scale: 2
			t.string :mont_sani_plato_ducha_comment
			t.decimal :mont_sani_bidet, precision: 7, scale: 2
			t.string :mont_sani_bidet_comment
			t.decimal :mont_sani_inodoro_normal, precision: 7, scale: 2
			t.string :mont_sani_inodoro_normal_comment
			t.decimal :mont_sani_inodoro_suspendido, precision: 7, scale: 2
			t.string :mont_sani_inodoro_suspendido_comment
			t.decimal :mont_sani_inodoro_encastrado, precision: 7, scale: 2
			t.string :mont_sani_inodoro_encastrado_comment
			t.decimal :mont_sani_grifo_ducha, precision: 7, scale: 2
			t.string :mont_sani_grifo_ducha_comment
			t.decimal :mont_sani_grifo_banera, precision: 7, scale: 2
			t.string :mont_sani_grifo_banera_comment
			t.decimal :mont_sani_acceso_atornillado, precision: 7, scale: 2
			t.string :mont_sani_acceso_atornillado_comment
			t.decimal :mont_sani_colum_hidromasaje, precision: 7, scale: 2
			t.string :mont_sani_colum_hidromasaje_comment
			t.decimal :mont_sani_cabina_ducha, precision: 7, scale: 2
			t.string :mont_sani_cabina_ducha_comment
			t.decimal :mont_sani_plato_ducha_obra, precision: 7, scale: 2
			t.string :mont_sani_plato_ducha_obra_comment
			t.decimal :mont_sani_lavabo_pedestal, precision: 7, scale: 2
			t.string :mont_sani_lavabo_pedestal_comment

			t.decimal :mont_electro_mueble_alto_cocina, precision: 7, scale: 2
			t.string :mont_electro_mueble_alto_cocina_comment
			t.decimal :mont_electro_mueble_bajo_cocina, precision: 7, scale: 2
			t.string :mont_electro_mueble_bajo_cocina_comment
			t.decimal :mont_electro_horno_electrico, precision: 7, scale: 2
			t.string :mont_electro_horno_electrico_comment
			t.decimal :mont_electro_placa_vitro, precision: 7, scale: 2
			t.string :mont_electro_placa_vitro_comment
			t.decimal :mont_electro_placa_electrica, precision: 7, scale: 2
			t.string :mont_electro_placa_electrica_comment
			t.decimal :mont_electro_lavadora, precision: 7, scale: 2
			t.string :mont_electro_lavadora_comment
			t.decimal :mont_electro_frigorifico, precision: 7, scale: 2
			t.string :mont_electro_frigorifico_comment
			t.decimal :mont_electro_lavavajillas, precision: 7, scale: 2
			t.string :mont_electro_lavavajillas_comment
			t.decimal :mont_electro_microondas, precision: 7, scale: 2
			t.string :mont_electro_microondas_comment
			t.decimal :mont_electro_secadora, precision: 7, scale: 2
			t.string :mont_electro_secadora_comment

			t.decimal :mont_fregadero, precision: 7, scale: 2
			t.string :mont_fregadero_comment
			t.decimal :mont_grifo_fregadero, precision: 7, scale: 2
			t.string :mont_grifo_fregadero_comment

			t.decimal :colo_pmarcha_termo_elect_a, precision: 7, scale: 2
			t.string :colo_pmarcha_termo_elect_a_comment
			t.decimal :colo_pmarcha_termo_elect_b, precision: 7, scale: 2
			t.string :colo_pmarcha_termo_elect_b_comment
			t.decimal :colo_pmarcha_termo_elect_c, precision: 7, scale: 2
			t.string :colo_pmarcha_termo_elect_c_comment
			t.decimal :colo_pmarcha_termo_elect_d, precision: 7, scale: 2
			t.string :colo_pmarcha_termo_elect_d_comment
			t.decimal :colo_pmarcha_termo_elect_e, precision: 7, scale: 2
			t.string :colo_pmarcha_termo_elect_e_comment
			t.decimal :colo_pmarcha_termo_elect_f, precision: 7, scale: 2
			t.string :colo_pmarcha_termo_elect_f_comment

			t.decimal :colo_pmarcha_calde_atmos, precision: 7, scale: 2
			t.string :colo_pmarcha_calde_atmos_comment
			t.decimal :colo_pmarcha_calde_bajo_nox, precision: 7, scale: 2
			t.string :colo_pmarcha_calde_bajo_nox_comment
			t.decimal :colo_pmarcha_calde_estanca, precision: 7, scale: 2
			t.string :colo_pmarcha_calde_estanca_comment

			t.decimal :techo_pintar, precision: 7, scale: 2
			t.string :techo_pintar_comment
			t.decimal :techo_tipo_pintura, precision: 7, scale: 2
			t.string :techo_tipo_pintura_comment
			t.decimal :techo_alisar, precision: 7, scale: 2
			t.string :techo_alisar_comment
			t.decimal :techo_reparar_humedad, precision: 7, scale: 2
			t.string :techo_reparar_humedad_comment

			t.decimal :pared_empapelar, precision: 7, scale: 2
			t.string :pared_empapelar_comment
			t.decimal :pared_quitar_papel, precision: 7, scale: 2
			t.string :pared_quitar_papel_comment
			t.decimal :pared_alisar, precision: 7, scale: 2
			t.string :pared_alisar_comment
			t.decimal :pared_pintar, precision: 7, scale: 2
			t.string :pared_pintar_comment
			t.decimal :pared_reparar_humedad, precision: 7, scale: 2
			t.string :pared_reparar_humedad_comment

			t.decimal :carpin_friso, precision: 7, scale: 2
			t.string :carpin_friso_comment

			t.decimal :puerta_colocar, precision: 7, scale: 2
			t.string :puerta_colocar_comment
			t.decimal :puerta_tipo, precision: 7, scale: 2
			t.string :puerta_tipo_comment
			t.decimal :puerta_cambio_precerco, precision: 7, scale: 2
			t.string :puerta_cambio_precerco_comment

			t.decimal :ventana_colocar, precision: 7, scale: 2
			t.string :ventana_colocar_comment
			t.decimal :ventana_tipo, precision: 7, scale: 2
			t.string :ventana_tipo_comment
			t.decimal :ventana_contraventana, precision: 7, scale: 2      
			t.string :ventana_contraventana_comment

      t.timestamps
    end
  end
end
