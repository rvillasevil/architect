# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180402171210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "azulejos", force: :cascade do |t|
    t.string  "description"
    t.string  "name"
    t.string  "medidas"
    t.decimal "precio"
    t.string  "unidad"
    t.string  "aspecto"
  end

  create_table "banos", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "demo_quitar_baldosa",             precision: 7, scale: 2
    t.decimal  "demo_quitar_inodoro",             precision: 7, scale: 2
    t.decimal  "demo_quitar_bidet",               precision: 7, scale: 2
    t.decimal  "demo_quitar_plato_ducha",         precision: 7, scale: 2
    t.decimal  "demo_quitar_mampara",             precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble_bano",         precision: 7, scale: 2
    t.decimal  "demo_quitar_banera",              precision: 7, scale: 2
    t.decimal  "demo_quitar_falso_techo",         precision: 7, scale: 2
    t.decimal  "demo_quitar_tabique",             precision: 7, scale: 2
    t.decimal  "demo_quitar_mobi_cocina",         precision: 7, scale: 2
    t.decimal  "demo_retir_electrodomesticos",    precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble",              precision: 7, scale: 2
    t.decimal  "demo_friso_madera",               precision: 7, scale: 2
    t.decimal  "tub_termo_electrico",             precision: 7, scale: 2
    t.decimal  "tub_radiador",                    precision: 7, scale: 2
    t.decimal  "tub_lavabo",                      precision: 7, scale: 2
    t.decimal  "tub_ducha_banera",                precision: 7, scale: 2
    t.decimal  "tub_bidet",                       precision: 7, scale: 2
    t.decimal  "tub_inodoro",                     precision: 7, scale: 2
    t.decimal  "tub_colum_hidromasaje",           precision: 7, scale: 2
    t.decimal  "tub_lavabo_doble",                precision: 7, scale: 2
    t.decimal  "tub_jacuzzy",                     precision: 7, scale: 2
    t.decimal  "tub_sauna",                       precision: 7, scale: 2
    t.decimal  "tub_ducha_empotrada",             precision: 7, scale: 2
    t.decimal  "tub_toallero",                    precision: 7, scale: 2
    t.decimal  "tub_reubicar_contador",           precision: 7, scale: 2
    t.decimal  "tub_lavadora",                    precision: 7, scale: 2
    t.decimal  "tub_reubicar_inodoro",            precision: 7, scale: 2
    t.decimal  "tub_tipo"
    t.decimal  "tub_caldera",                     precision: 7, scale: 2
    t.decimal  "tub_fregadero",                   precision: 7, scale: 2
    t.decimal  "tub_lavavajillas",                precision: 7, scale: 2
    t.decimal  "tub_secadora",                    precision: 7, scale: 2
    t.decimal  "elec_pto_luz_techo",              precision: 7, scale: 2
    t.decimal  "elec_pto_luz_pared",              precision: 7, scale: 2
    t.decimal  "elec_interr_simple",              precision: 7, scale: 2
    t.decimal  "elec_interr_doble",               precision: 7, scale: 2
    t.decimal  "elec_interr_triple",              precision: 7, scale: 2
    t.decimal  "elec_enchu_simple",               precision: 7, scale: 2
    t.decimal  "elec_enchu_doble",                precision: 7, scale: 2
    t.decimal  "elec_enchu_triple",               precision: 7, scale: 2
    t.decimal  "elec_reubicar_caja_luz",          precision: 7, scale: 2
    t.decimal  "elec_toma_lavadora",              precision: 7, scale: 2
    t.decimal  "elec_toma_ventilador_extractor",  precision: 7, scale: 2
    t.decimal  "elec_toma_horno_vitroceramica",   precision: 7, scale: 2
    t.decimal  "elec_toma_microondas",            precision: 7, scale: 2
    t.decimal  "elec_toma_frigorifico",           precision: 7, scale: 2
    t.decimal  "elec_toma_lavavajillas",          precision: 7, scale: 2
    t.decimal  "elec_toma_secadora",              precision: 7, scale: 2
    t.decimal  "elec_toma_telefono",              precision: 7, scale: 2
    t.decimal  "demo_quitar_azulejos",            precision: 7, scale: 2
    t.decimal  "alb_azulejo",                     precision: 7, scale: 2
    t.decimal  "alb_tipo_azulejo",                precision: 7, scale: 2
    t.decimal  "alb_baldosa",                     precision: 7, scale: 2
    t.decimal  "alb_tipo_baldosa",                precision: 7, scale: 2
    t.decimal  "alb_techo_pladur",                precision: 7, scale: 2
    t.decimal  "alb_tabique_ladriyeso",           precision: 7, scale: 2
    t.decimal  "alb_tabique_pladur",              precision: 7, scale: 2
    t.decimal  "alb_tabique_fabrica",             precision: 7, scale: 2
    t.decimal  "alb_tabique_paves",               precision: 7, scale: 2
    t.decimal  "alb_nivelacion_pared",            precision: 7, scale: 2
    t.decimal  "mont_sani_mampara",               precision: 7, scale: 2
    t.decimal  "mont_sani_mueble_bano",           precision: 7, scale: 2
    t.decimal  "mont_sani_banera",                precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha",           precision: 7, scale: 2
    t.decimal  "mont_sani_bidet",                 precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_normal",        precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_suspendido",    precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_encastrado",    precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_ducha",           precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_banera",          precision: 7, scale: 2
    t.decimal  "mont_sani_acceso_atornillado",    precision: 7, scale: 2
    t.decimal  "mont_sani_colum_hidromasaje",     precision: 7, scale: 2
    t.decimal  "mont_sani_cabina_ducha",          precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha_obra",      precision: 7, scale: 2
    t.decimal  "mont_sani_lavabo_pedestal",       precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_alto_cocina", precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_bajo_cocina", precision: 7, scale: 2
    t.decimal  "mont_electro_horno_electrico",    precision: 7, scale: 2
    t.decimal  "mont_electro_placa_vitro",        precision: 7, scale: 2
    t.decimal  "mont_electro_placa_electrica",    precision: 7, scale: 2
    t.decimal  "mont_electro_lavadora",           precision: 7, scale: 2
    t.decimal  "mont_electro_frigorifico",        precision: 7, scale: 2
    t.decimal  "mont_electro_lavavajillas",       precision: 7, scale: 2
    t.decimal  "mont_electro_microondas",         precision: 7, scale: 2
    t.decimal  "mont_electro_secadora",           precision: 7, scale: 2
    t.decimal  "mont_fregadero",                  precision: 7, scale: 2
    t.decimal  "mont_grifo_fregadero",            precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_a",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_b",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_c",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_d",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_e",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_f",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_atmos",        precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_bajo_nox",     precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_estanca",      precision: 7, scale: 2
    t.decimal  "techo_pintar",                    precision: 7, scale: 2
    t.decimal  "techo_tipo_pintura",              precision: 7, scale: 2
    t.decimal  "techo_alisar",                    precision: 7, scale: 2
    t.decimal  "techo_reparar_humedad",           precision: 7, scale: 2
    t.decimal  "pared_empapelar",                 precision: 7, scale: 2
    t.decimal  "pared_quitar_papel",              precision: 7, scale: 2
    t.decimal  "pared_alisar",                    precision: 7, scale: 2
    t.decimal  "pared_pintar",                    precision: 7, scale: 2
    t.decimal  "pared_reparar_humedad",           precision: 7, scale: 2
    t.decimal  "carpin_friso",                    precision: 7, scale: 2
    t.decimal  "puerta_colocar",                  precision: 7, scale: 2
    t.decimal  "puerta_tipo",                     precision: 7, scale: 2
    t.decimal  "puerta_cambio_precerco",          precision: 7, scale: 2
    t.decimal  "ventana_colocar",                 precision: 7, scale: 2
    t.decimal  "ventana_tipo",                    precision: 7, scale: 2
    t.decimal  "ventana_contraventana",           precision: 7, scale: 2
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.integer  "user_id"
    t.integer  "reform_id"
    t.decimal  "demo_quitar_azulejo",             precision: 7, scale: 2
  end

  create_table "budgets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "reform_id"
    t.decimal  "cost",          precision: 10, scale: 2
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "habitacion_id"
    t.integer  "partida_id"
  end

  create_table "cocinas", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "demo_quitar_baldosa",             precision: 7, scale: 2
    t.decimal  "demo_quitar_inodoro",             precision: 7, scale: 2
    t.decimal  "demo_quitar_bidet",               precision: 7, scale: 2
    t.decimal  "demo_quitar_plato_ducha",         precision: 7, scale: 2
    t.decimal  "demo_quitar_mampara",             precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble_bano",         precision: 7, scale: 2
    t.decimal  "demo_quitar_banera",              precision: 7, scale: 2
    t.decimal  "demo_quitar_falso_techo",         precision: 7, scale: 2
    t.decimal  "demo_quitar_tabique",             precision: 7, scale: 2
    t.decimal  "demo_quitar_mobi_cocina",         precision: 7, scale: 2
    t.decimal  "demo_retir_electrodomesticos",    precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble",              precision: 7, scale: 2
    t.decimal  "demo_friso_madera",               precision: 7, scale: 2
    t.decimal  "tub_termo_electrico",             precision: 7, scale: 2
    t.decimal  "tub_radiador",                    precision: 7, scale: 2
    t.decimal  "tub_lavabo",                      precision: 7, scale: 2
    t.decimal  "tub_ducha_banera",                precision: 7, scale: 2
    t.decimal  "tub_bidet",                       precision: 7, scale: 2
    t.decimal  "tub_inodoro",                     precision: 7, scale: 2
    t.decimal  "tub_colum_hidromasaje",           precision: 7, scale: 2
    t.decimal  "tub_lavabo_doble",                precision: 7, scale: 2
    t.decimal  "tub_jacuzzy",                     precision: 7, scale: 2
    t.decimal  "tub_sauna",                       precision: 7, scale: 2
    t.decimal  "tub_ducha_empotrada",             precision: 7, scale: 2
    t.decimal  "tub_toallero",                    precision: 7, scale: 2
    t.decimal  "tub_reubicar_contador",           precision: 7, scale: 2
    t.decimal  "tub_lavadora",                    precision: 7, scale: 2
    t.decimal  "tub_reubicar_inodoro",            precision: 7, scale: 2
    t.decimal  "tub_tipo"
    t.decimal  "tub_caldera",                     precision: 7, scale: 2
    t.decimal  "tub_fregadero",                   precision: 7, scale: 2
    t.decimal  "tub_lavavajillas",                precision: 7, scale: 2
    t.decimal  "tub_secadora",                    precision: 7, scale: 2
    t.decimal  "elec_pto_luz_techo",              precision: 7, scale: 2
    t.decimal  "elec_pto_luz_pared",              precision: 7, scale: 2
    t.decimal  "elec_interr_simple",              precision: 7, scale: 2
    t.decimal  "elec_interr_doble",               precision: 7, scale: 2
    t.decimal  "elec_interr_triple",              precision: 7, scale: 2
    t.decimal  "elec_enchu_simple",               precision: 7, scale: 2
    t.decimal  "elec_enchu_doble",                precision: 7, scale: 2
    t.decimal  "elec_enchu_triple",               precision: 7, scale: 2
    t.decimal  "elec_reubicar_caja_luz",          precision: 7, scale: 2
    t.decimal  "elec_toma_lavadora",              precision: 7, scale: 2
    t.decimal  "elec_toma_ventilador_extractor",  precision: 7, scale: 2
    t.decimal  "elec_toma_horno_vitroceramica",   precision: 7, scale: 2
    t.decimal  "elec_toma_microondas",            precision: 7, scale: 2
    t.decimal  "elec_toma_frigorifico",           precision: 7, scale: 2
    t.decimal  "elec_toma_lavavajillas",          precision: 7, scale: 2
    t.decimal  "elec_toma_secadora",              precision: 7, scale: 2
    t.decimal  "elec_toma_telefono",              precision: 7, scale: 2
    t.decimal  "demo_quitar_azulejos",            precision: 7, scale: 2
    t.decimal  "alb_azulejo",                     precision: 7, scale: 2
    t.decimal  "alb_tipo_azulejo",                precision: 7, scale: 2
    t.decimal  "alb_baldosa",                     precision: 7, scale: 2
    t.decimal  "alb_tipo_baldosa",                precision: 7, scale: 2
    t.decimal  "alb_techo_pladur",                precision: 7, scale: 2
    t.decimal  "alb_tabique_ladriyeso",           precision: 7, scale: 2
    t.decimal  "alb_tabique_pladur",              precision: 7, scale: 2
    t.decimal  "alb_tabique_fabrica",             precision: 7, scale: 2
    t.decimal  "alb_tabique_paves",               precision: 7, scale: 2
    t.decimal  "alb_nivelacion_pared",            precision: 7, scale: 2
    t.decimal  "mont_sani_mampara",               precision: 7, scale: 2
    t.decimal  "mont_sani_mueble_bano",           precision: 7, scale: 2
    t.decimal  "mont_sani_banera",                precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha",           precision: 7, scale: 2
    t.decimal  "mont_sani_bidet",                 precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_normal",        precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_suspendido",    precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_encastrado",    precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_ducha",           precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_banera",          precision: 7, scale: 2
    t.decimal  "mont_sani_acceso_atornillado",    precision: 7, scale: 2
    t.decimal  "mont_sani_colum_hidromasaje",     precision: 7, scale: 2
    t.decimal  "mont_sani_cabina_ducha",          precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha_obra",      precision: 7, scale: 2
    t.decimal  "mont_sani_lavabo_pedestal",       precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_alto_cocina", precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_bajo_cocina", precision: 7, scale: 2
    t.decimal  "mont_electro_horno_electrico",    precision: 7, scale: 2
    t.decimal  "mont_electro_placa_vitro",        precision: 7, scale: 2
    t.decimal  "mont_electro_placa_electrica",    precision: 7, scale: 2
    t.decimal  "mont_electro_lavadora",           precision: 7, scale: 2
    t.decimal  "mont_electro_frigorifico",        precision: 7, scale: 2
    t.decimal  "mont_electro_lavavajillas",       precision: 7, scale: 2
    t.decimal  "mont_electro_microondas",         precision: 7, scale: 2
    t.decimal  "mont_electro_secadora",           precision: 7, scale: 2
    t.decimal  "mont_fregadero",                  precision: 7, scale: 2
    t.decimal  "mont_grifo_fregadero",            precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_a",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_b",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_c",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_d",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_e",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_f",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_atmos",        precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_bajo_nox",     precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_estanca",      precision: 7, scale: 2
    t.decimal  "techo_pintar",                    precision: 7, scale: 2
    t.decimal  "techo_tipo_pintura",              precision: 7, scale: 2
    t.decimal  "techo_alisar",                    precision: 7, scale: 2
    t.decimal  "techo_reparar_humedad",           precision: 7, scale: 2
    t.decimal  "pared_empapelar",                 precision: 7, scale: 2
    t.decimal  "pared_quitar_papel",              precision: 7, scale: 2
    t.decimal  "pared_alisar",                    precision: 7, scale: 2
    t.decimal  "pared_pintar",                    precision: 7, scale: 2
    t.decimal  "pared_reparar_humedad",           precision: 7, scale: 2
    t.decimal  "carpin_friso",                    precision: 7, scale: 2
    t.decimal  "puerta_colocar",                  precision: 7, scale: 2
    t.decimal  "puerta_tipo",                     precision: 7, scale: 2
    t.decimal  "puerta_cambio_precerco",          precision: 7, scale: 2
    t.decimal  "ventana_colocar",                 precision: 7, scale: 2
    t.decimal  "ventana_tipo",                    precision: 7, scale: 2
    t.decimal  "ventana_contraventana",           precision: 7, scale: 2
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.integer  "user_id"
    t.integer  "reform_id"
    t.decimal  "demo_quitar_azulejo",             precision: 7, scale: 2
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "micropost_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "contenido"
    t.integer  "reply"
  end

  create_table "comunidads", force: :cascade do |t|
    t.string   "comunidad"
    t.integer  "capital_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "confirmacions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "reform_id"
    t.boolean  "usuario"
    t.boolean  "empresa"
    t.decimal  "cost",       precision: 7, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "demo_quitar_azulejo",             precision: 7, scale: 2
    t.decimal  "demo_quitar_baldosa",             precision: 7, scale: 2
    t.decimal  "demo_quitar_inodoro",             precision: 7, scale: 2
    t.decimal  "demo_quitar_bidet",               precision: 7, scale: 2
    t.decimal  "demo_quitar_plato_ducha",         precision: 7, scale: 2
    t.decimal  "demo_quitar_mampara",             precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble_bano",         precision: 7, scale: 2
    t.decimal  "demo_quitar_banera",              precision: 7, scale: 2
    t.decimal  "demo_quitar_falso_techo",         precision: 7, scale: 2
    t.decimal  "demo_quitar_tabique",             precision: 7, scale: 2
    t.decimal  "demo_quitar_mobi_cocina",         precision: 7, scale: 2
    t.decimal  "demo_retir_electrodomesticos",    precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble",              precision: 7, scale: 2
    t.decimal  "demo_friso_madera",               precision: 7, scale: 2
    t.decimal  "tub_termo_electrico",             precision: 7, scale: 2
    t.decimal  "tub_radiador",                    precision: 7, scale: 2
    t.decimal  "tub_lavabo",                      precision: 7, scale: 2
    t.decimal  "tub_ducha_banera",                precision: 7, scale: 2
    t.decimal  "tub_bidet",                       precision: 7, scale: 2
    t.decimal  "tub_inodoro",                     precision: 7, scale: 2
    t.decimal  "tub_colum_hidromasaje",           precision: 7, scale: 2
    t.decimal  "tub_lavabo_doble",                precision: 7, scale: 2
    t.decimal  "tub_jacuzzy",                     precision: 7, scale: 2
    t.decimal  "tub_sauna",                       precision: 7, scale: 2
    t.decimal  "tub_ducha_empotrada",             precision: 7, scale: 2
    t.decimal  "tub_toallero",                    precision: 7, scale: 2
    t.decimal  "tub_reubicar_contador",           precision: 7, scale: 2
    t.decimal  "tub_lavadora",                    precision: 7, scale: 2
    t.decimal  "tub_reubicar_inodoro",            precision: 7, scale: 2
    t.decimal  "tub_tipo"
    t.decimal  "tub_caldera",                     precision: 7, scale: 2
    t.decimal  "tub_fregadero",                   precision: 7, scale: 2
    t.decimal  "tub_lavavajillas",                precision: 7, scale: 2
    t.decimal  "tub_secadora",                    precision: 7, scale: 2
    t.decimal  "elec_pto_luz_techo",              precision: 7, scale: 2
    t.decimal  "elec_pto_luz_pared",              precision: 7, scale: 2
    t.decimal  "elec_interr_simple",              precision: 7, scale: 2
    t.decimal  "elec_interr_doble",               precision: 7, scale: 2
    t.decimal  "elec_interr_triple",              precision: 7, scale: 2
    t.decimal  "elec_enchu_simple",               precision: 7, scale: 2
    t.decimal  "elec_enchu_doble",                precision: 7, scale: 2
    t.decimal  "elec_enchu_triple",               precision: 7, scale: 2
    t.decimal  "elec_reubicar_caja_luz",          precision: 7, scale: 2
    t.decimal  "elec_toma_lavadora",              precision: 7, scale: 2
    t.decimal  "elec_toma_ventilador_extractor",  precision: 7, scale: 2
    t.decimal  "elec_toma_horno_vitroceramica",   precision: 7, scale: 2
    t.decimal  "elec_toma_microondas",            precision: 7, scale: 2
    t.decimal  "elec_toma_frigorifico",           precision: 7, scale: 2
    t.decimal  "elec_toma_lavavajillas",          precision: 7, scale: 2
    t.decimal  "elec_toma_secadora",              precision: 7, scale: 2
    t.decimal  "elec_toma_telefono",              precision: 7, scale: 2
    t.decimal  "demo_quitar_azulejos",            precision: 7, scale: 2
    t.decimal  "demo_quitar_baldosas",            precision: 7, scale: 2
    t.decimal  "demo_falso_techo",                precision: 7, scale: 2
    t.decimal  "demo_tabique",                    precision: 7, scale: 2
    t.decimal  "demo_inodoro",                    precision: 7, scale: 2
    t.decimal  "demo_bidet",                      precision: 7, scale: 2
    t.decimal  "demo_plato_ducha",                precision: 7, scale: 2
    t.decimal  "demo_mampara",                    precision: 7, scale: 2
    t.decimal  "demo_mueble_bano",                precision: 7, scale: 2
    t.decimal  "demo_banera",                     precision: 7, scale: 2
    t.decimal  "demo_mobiliario_cocina",          precision: 7, scale: 2
    t.decimal  "demo_electrodomesticos",          precision: 7, scale: 2
    t.decimal  "demo_frisos_madera",              precision: 7, scale: 2
    t.decimal  "demo_muebles",                    precision: 7, scale: 2
    t.decimal  "alb_azulejo",                     precision: 7, scale: 2
    t.decimal  "alb_tipo_azulejo",                precision: 7, scale: 2
    t.decimal  "alb_baldosa",                     precision: 7, scale: 2
    t.decimal  "alb_tipo_baldosa",                precision: 7, scale: 2
    t.decimal  "alb_techo_pladur",                precision: 7, scale: 2
    t.decimal  "alb_tabique_ladriyeso",           precision: 7, scale: 2
    t.decimal  "alb_tabique_pladur",              precision: 7, scale: 2
    t.decimal  "alb_tabique_fabrica",             precision: 7, scale: 2
    t.decimal  "alb_tabique_paves",               precision: 7, scale: 2
    t.decimal  "alb_nivelacion_pared",            precision: 7, scale: 2
    t.decimal  "mont_sani_mampara",               precision: 7, scale: 2
    t.decimal  "mont_sani_mueble_bano",           precision: 7, scale: 2
    t.decimal  "mont_sani_banera",                precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha",           precision: 7, scale: 2
    t.decimal  "mont_sani_bidet",                 precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_normal",        precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_suspendido",    precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_encastrado",    precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_ducha",           precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_banera",          precision: 7, scale: 2
    t.decimal  "mont_sani_acceso_atornillado",    precision: 7, scale: 2
    t.decimal  "mont_sani_colum_hidromasaje",     precision: 7, scale: 2
    t.decimal  "mont_sani_cabina_ducha",          precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha_obra",      precision: 7, scale: 2
    t.decimal  "mont_sani_lavabo_pedestal",       precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_alto_cocina", precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_bajo_cocina", precision: 7, scale: 2
    t.decimal  "mont_electro_horno_electrico",    precision: 7, scale: 2
    t.decimal  "mont_electro_placa_vitro",        precision: 7, scale: 2
    t.decimal  "mont_electro_placa_electrica",    precision: 7, scale: 2
    t.decimal  "mont_electro_lavadora",           precision: 7, scale: 2
    t.decimal  "mont_electro_frigorifico",        precision: 7, scale: 2
    t.decimal  "mont_electro_lavavajillas",       precision: 7, scale: 2
    t.decimal  "mont_electro_microondas",         precision: 7, scale: 2
    t.decimal  "mont_electro_secadora",           precision: 7, scale: 2
    t.decimal  "mont_fregadero",                  precision: 7, scale: 2
    t.decimal  "mont_grifo_fregadero",            precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_a",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_b",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_c",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_d",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_e",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_f",      precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_atmos",        precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_bajo_nox",     precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_estanca",      precision: 7, scale: 2
    t.decimal  "techo_pintar",                    precision: 7, scale: 2
    t.decimal  "techo_tipo_pintura",              precision: 7, scale: 2
    t.decimal  "techo_alisar",                    precision: 7, scale: 2
    t.decimal  "techo_reparar_humedad",           precision: 7, scale: 2
    t.decimal  "pared_empapelar",                 precision: 7, scale: 2
    t.decimal  "pared_quitar_papel",              precision: 7, scale: 2
    t.decimal  "pared_alisar",                    precision: 7, scale: 2
    t.decimal  "pared_pintar",                    precision: 7, scale: 2
    t.decimal  "pared_reparar_humedad",           precision: 7, scale: 2
    t.decimal  "carpin_friso",                    precision: 7, scale: 2
    t.decimal  "puerta_colocar",                  precision: 7, scale: 2
    t.decimal  "puerta_tipo",                     precision: 7, scale: 2
    t.decimal  "puerta_cambio_precerco",          precision: 7, scale: 2
    t.decimal  "ventana_colocar",                 precision: 7, scale: 2
    t.decimal  "ventana_tipo",                    precision: 7, scale: 2
    t.decimal  "ventana_contraventana",           precision: 7, scale: 2
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
  end

  create_table "estados", force: :cascade do |t|
    t.integer  "ubicacionpaisid"
    t.string   "estadonombre"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "plaza_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plaza_id"], name: "index_groups_on_plaza_id", using: :btree
    t.index ["user_id", "plaza_id"], name: "index_groups_on_user_id_and_plaza_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_groups_on_user_id", using: :btree
  end

  create_table "habitacions", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "demo_quitar_baldosa",                     precision: 7, scale: 2
    t.decimal  "demo_quitar_inodoro",                     precision: 7, scale: 2
    t.decimal  "demo_quitar_bidet",                       precision: 7, scale: 2
    t.decimal  "demo_quitar_plato_ducha",                 precision: 7, scale: 2
    t.decimal  "demo_quitar_mampara",                     precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble_bano",                 precision: 7, scale: 2
    t.decimal  "demo_quitar_banera",                      precision: 7, scale: 2
    t.decimal  "demo_quitar_falso_techo",                 precision: 7, scale: 2
    t.decimal  "demo_quitar_tabique",                     precision: 7, scale: 2
    t.decimal  "demo_quitar_mobi_cocina",                 precision: 7, scale: 2
    t.decimal  "demo_retir_electrodomesticos",            precision: 7, scale: 2
    t.decimal  "demo_quitar_mueble",                      precision: 7, scale: 2
    t.decimal  "demo_friso_madera",                       precision: 7, scale: 2
    t.decimal  "tub_termo_electrico",                     precision: 7, scale: 2
    t.decimal  "tub_radiador",                            precision: 7, scale: 2
    t.decimal  "tub_lavabo",                              precision: 7, scale: 2
    t.decimal  "tub_ducha_banera",                        precision: 7, scale: 2
    t.decimal  "tub_bidet",                               precision: 7, scale: 2
    t.decimal  "tub_inodoro",                             precision: 7, scale: 2
    t.decimal  "tub_colum_hidromasaje",                   precision: 7, scale: 2
    t.decimal  "tub_lavabo_doble",                        precision: 7, scale: 2
    t.decimal  "tub_jacuzzy",                             precision: 7, scale: 2
    t.decimal  "tub_sauna",                               precision: 7, scale: 2
    t.decimal  "tub_ducha_empotrada",                     precision: 7, scale: 2
    t.decimal  "tub_toallero",                            precision: 7, scale: 2
    t.decimal  "tub_reubicar_contador",                   precision: 7, scale: 2
    t.decimal  "tub_lavadora",                            precision: 7, scale: 2
    t.decimal  "tub_reubicar_inodoro",                    precision: 7, scale: 2
    t.decimal  "tub_tipo"
    t.decimal  "tub_caldera",                             precision: 7, scale: 2
    t.decimal  "tub_fregadero",                           precision: 7, scale: 2
    t.decimal  "tub_lavavajillas",                        precision: 7, scale: 2
    t.decimal  "tub_secadora",                            precision: 7, scale: 2
    t.decimal  "elec_pto_luz_techo",                      precision: 7, scale: 2
    t.decimal  "elec_pto_luz_pared",                      precision: 7, scale: 2
    t.decimal  "elec_interr_simple",                      precision: 7, scale: 2
    t.decimal  "elec_interr_doble",                       precision: 7, scale: 2
    t.decimal  "elec_interr_triple",                      precision: 7, scale: 2
    t.decimal  "elec_enchu_simple",                       precision: 7, scale: 2
    t.decimal  "elec_enchu_doble",                        precision: 7, scale: 2
    t.decimal  "elec_enchu_triple",                       precision: 7, scale: 2
    t.decimal  "elec_reubicar_caja_luz",                  precision: 7, scale: 2
    t.decimal  "elec_toma_lavadora",                      precision: 7, scale: 2
    t.decimal  "elec_toma_ventilador_extractor",          precision: 7, scale: 2
    t.decimal  "elec_toma_horno_vitroceramica",           precision: 7, scale: 2
    t.decimal  "elec_toma_microondas",                    precision: 7, scale: 2
    t.decimal  "elec_toma_frigorifico",                   precision: 7, scale: 2
    t.decimal  "elec_toma_lavavajillas",                  precision: 7, scale: 2
    t.decimal  "elec_toma_secadora",                      precision: 7, scale: 2
    t.decimal  "elec_toma_telefono",                      precision: 7, scale: 2
    t.decimal  "demo_quitar_azulejos",                    precision: 7, scale: 2
    t.decimal  "alb_azulejo",                             precision: 7, scale: 2
    t.decimal  "alb_tipo_azulejo",                        precision: 7, scale: 2
    t.decimal  "alb_baldosa",                             precision: 7, scale: 2
    t.decimal  "alb_tipo_baldosa",                        precision: 7, scale: 2
    t.decimal  "alb_techo_pladur",                        precision: 7, scale: 2
    t.decimal  "alb_tabique_ladriyeso",                   precision: 7, scale: 2
    t.decimal  "alb_tabique_pladur",                      precision: 7, scale: 2
    t.decimal  "alb_tabique_fabrica",                     precision: 7, scale: 2
    t.decimal  "alb_tabique_paves",                       precision: 7, scale: 2
    t.decimal  "alb_nivelacion_pared",                    precision: 7, scale: 2
    t.decimal  "mont_sani_mampara",                       precision: 7, scale: 2
    t.decimal  "mont_sani_mueble_bano",                   precision: 7, scale: 2
    t.decimal  "mont_sani_banera",                        precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha",                   precision: 7, scale: 2
    t.decimal  "mont_sani_bidet",                         precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_normal",                precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_suspendido",            precision: 7, scale: 2
    t.decimal  "mont_sani_inodoro_encastrado",            precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_ducha",                   precision: 7, scale: 2
    t.decimal  "mont_sani_grifo_banera",                  precision: 7, scale: 2
    t.decimal  "mont_sani_acceso_atornillado",            precision: 7, scale: 2
    t.decimal  "mont_sani_colum_hidromasaje",             precision: 7, scale: 2
    t.decimal  "mont_sani_cabina_ducha",                  precision: 7, scale: 2
    t.decimal  "mont_sani_plato_ducha_obra",              precision: 7, scale: 2
    t.decimal  "mont_sani_lavabo_pedestal",               precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_alto_cocina",         precision: 7, scale: 2
    t.decimal  "mont_electro_mueble_bajo_cocina",         precision: 7, scale: 2
    t.decimal  "mont_electro_horno_electrico",            precision: 7, scale: 2
    t.decimal  "mont_electro_placa_vitro",                precision: 7, scale: 2
    t.decimal  "mont_electro_placa_electrica",            precision: 7, scale: 2
    t.decimal  "mont_electro_lavadora",                   precision: 7, scale: 2
    t.decimal  "mont_electro_frigorifico",                precision: 7, scale: 2
    t.decimal  "mont_electro_lavavajillas",               precision: 7, scale: 2
    t.decimal  "mont_electro_microondas",                 precision: 7, scale: 2
    t.decimal  "mont_electro_secadora",                   precision: 7, scale: 2
    t.decimal  "mont_fregadero",                          precision: 7, scale: 2
    t.decimal  "mont_grifo_fregadero",                    precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_a",              precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_b",              precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_c",              precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_d",              precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_e",              precision: 7, scale: 2
    t.decimal  "colo_pmarcha_termo_elect_f",              precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_atmos",                precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_bajo_nox",             precision: 7, scale: 2
    t.decimal  "colo_pmarcha_calde_estanca",              precision: 7, scale: 2
    t.decimal  "techo_pintar",                            precision: 7, scale: 2
    t.decimal  "techo_tipo_pintura",                      precision: 7, scale: 2
    t.decimal  "techo_alisar",                            precision: 7, scale: 2
    t.decimal  "techo_reparar_humedad",                   precision: 7, scale: 2
    t.decimal  "pared_empapelar",                         precision: 7, scale: 2
    t.decimal  "pared_quitar_papel",                      precision: 7, scale: 2
    t.decimal  "pared_alisar",                            precision: 7, scale: 2
    t.decimal  "pared_pintar",                            precision: 7, scale: 2
    t.decimal  "pared_reparar_humedad",                   precision: 7, scale: 2
    t.decimal  "carpin_friso",                            precision: 7, scale: 2
    t.decimal  "puerta_colocar",                          precision: 7, scale: 2
    t.decimal  "puerta_tipo",                             precision: 7, scale: 2
    t.decimal  "puerta_cambio_precerco",                  precision: 7, scale: 2
    t.decimal  "ventana_colocar",                         precision: 7, scale: 2
    t.decimal  "ventana_tipo",                            precision: 7, scale: 2
    t.decimal  "ventana_contraventana",                   precision: 7, scale: 2
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.integer  "user_id"
    t.integer  "reform_id"
    t.decimal  "demo_quitar_azulejo",                     precision: 7, scale: 2
    t.string   "demo_quitar_azulejo_comment"
    t.string   "demo_quitar_baldosa_comment"
    t.string   "demo_quitar_falso_techo_comment"
    t.string   "demo_quitar_tabique_comment"
    t.string   "demo_quitar_inodoro_comment"
    t.string   "demo_quitar_bidet_comment"
    t.string   "demo_quitar_plato_ducha_comment"
    t.string   "demo_quitar_mampara_comment"
    t.string   "demo_quitar_mueble_bano_comment"
    t.string   "demo_quitar_banera_comment"
    t.string   "demo_quitar_mobi_cocina_comment"
    t.string   "demo_retir_electrodomesticos_comment"
    t.string   "demo_friso_madera_comment"
    t.string   "demo_quitar_mueble_comment"
    t.string   "tub_termo_electrico_comment"
    t.string   "tub_radiador_comment"
    t.string   "tub_lavabo_comment"
    t.string   "tub_ducha_banera_comment"
    t.string   "tub_bidet_comment"
    t.string   "tub_inodoro_comment"
    t.string   "tub_colum_hidromasaje_comment"
    t.string   "tub_lavabo_doble_comment"
    t.string   "tub_jacuzzy_comment"
    t.string   "tub_sauna_comment"
    t.string   "tub_ducha_empotrada_comment"
    t.string   "tub_toallero_comment"
    t.string   "tub_reubicar_contador_comment"
    t.string   "tub_lavadora_comment"
    t.string   "tub_reubicar_inodoro_comment"
    t.string   "tub_tipo_comment"
    t.string   "tub_caldera_comment"
    t.string   "tub_fregadero_comment"
    t.string   "tub_lavavajillas_comment"
    t.string   "tub_secadora_comment"
    t.string   "elec_pto_luz_techo_comment"
    t.string   "elec_pto_luz_pared_comment"
    t.string   "elec_interr_simple_comment"
    t.string   "elec_interr_doble_comment"
    t.string   "elec_interr_triple_comment"
    t.string   "elec_enchu_simple_comment"
    t.string   "elec_enchu_doble_comment"
    t.string   "elec_enchu_triple_comment"
    t.string   "elec_reubicar_caja_luz_comment"
    t.string   "elec_toma_lavadora_comment"
    t.string   "elec_toma_ventilador_extractor_comment"
    t.string   "elec_toma_horno_vitroceramica_comment"
    t.string   "elec_toma_microondas_comment"
    t.string   "elec_toma_frigorifico_comment"
    t.string   "elec_toma_lavavajillas_comment"
    t.string   "elec_toma_secadora_comment"
    t.string   "elec_toma_telefono_comment"
    t.string   "alb_azulejo_comment"
    t.string   "alb_tipo_azulejo_comment"
    t.string   "alb_baldosa_comment"
    t.string   "alb_tipo_baldosa_comment"
    t.string   "alb_techo_pladur_comment"
    t.string   "alb_tabique_ladriyeso_comment"
    t.string   "alb_tabique_pladur_comment"
    t.string   "alb_tabique_fabrica_comment"
    t.string   "alb_tabique_paves_comment"
    t.string   "alb_nivelacion_pared_comment"
    t.string   "mont_sani_mampara_comment"
    t.string   "mont_sani_mueble_bano_comment"
    t.string   "mont_sani_banera_comment"
    t.string   "mont_sani_plato_ducha_comment"
    t.string   "mont_sani_bidet_comment"
    t.string   "mont_sani_inodoro_normal_comment"
    t.string   "mont_sani_inodoro_suspendido_comment"
    t.string   "mont_sani_inodoro_encastrado_comment"
    t.string   "mont_sani_grifo_ducha_comment"
    t.string   "mont_sani_grifo_banera_comment"
    t.string   "mont_sani_acceso_atornillado_comment"
    t.string   "mont_sani_colum_hidromasaje_comment"
    t.string   "mont_sani_cabina_ducha_comment"
    t.string   "mont_sani_plato_ducha_obra_comment"
    t.string   "mont_sani_lavabo_pedestal_comment"
    t.string   "mont_electro_mueble_alto_cocina_comment"
    t.string   "mont_electro_mueble_bajo_cocina_comment"
    t.string   "mont_electro_horno_electrico_comment"
    t.string   "mont_electro_placa_vitro_comment"
    t.string   "mont_electro_placa_electrica_comment"
    t.string   "mont_electro_lavadora_comment"
    t.string   "mont_electro_frigorifico_comment"
    t.string   "mont_electro_lavavajillas_comment"
    t.string   "mont_electro_microondas_comment"
    t.string   "mont_electro_secadora_comment"
    t.string   "mont_fregadero_comment"
    t.string   "mont_grifo_fregadero_comment"
    t.string   "colo_pmarcha_termo_elect_a_comment"
    t.string   "colo_pmarcha_termo_elect_b_comment"
    t.string   "colo_pmarcha_termo_elect_c_comment"
    t.string   "colo_pmarcha_termo_elect_d_comment"
    t.string   "colo_pmarcha_termo_elect_e_comment"
    t.string   "colo_pmarcha_termo_elect_f_comment"
    t.string   "colo_pmarcha_calde_atmos_comment"
    t.string   "colo_pmarcha_calde_bajo_nox_comment"
    t.string   "colo_pmarcha_calde_estanca_comment"
    t.string   "techo_pintar_comment"
    t.string   "techo_tipo_pintura_comment"
    t.string   "techo_alisar_comment"
    t.string   "techo_reparar_humedad_comment"
    t.string   "pared_empapelar_comment"
    t.string   "pared_quitar_papel_comment"
    t.string   "pared_alisar_comment"
    t.string   "pared_pintar_comment"
    t.string   "pared_reparar_humedad_comment"
    t.string   "carpin_friso_comment"
    t.string   "puerta_colocar_comment"
    t.string   "puerta_tipo_comment"
    t.string   "puerta_cambio_precerco_comment"
    t.string   "ventana_colocar_comment"
    t.string   "ventana_tipo_comment"
    t.string   "ventana_contraventana_comment"
    t.string   "email_invitado"
    t.string   "nombre_invitado"
    t.string   "provincia_invitado"
    t.string   "plazo_invitado"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "picture"
    t.string   "video"
    t.string   "hashtag1"
    t.string   "hashtag2"
    t.string   "hashtag3"
    t.string   "link"
    t.integer  "plaza_id"
    t.boolean  "petition"
    t.string   "title"
    t.integer  "reply"
    t.string   "title_link"
    t.string   "photo_link"
    t.string   "valoracion"
    t.integer  "user_valorado"
    t.index ["user_id"], name: "index_microposts_on_user_id", using: :btree
  end

  create_table "municipios", force: :cascade do |t|
    t.integer  "provincia_id"
    t.integer  "municipio_id"
    t.integer  "codmunicipio"
    t.string   "nombre"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "id_provincia"
    t.integer  "cod_municipio"
    t.integer  "DC"
  end

  create_table "pais", force: :cascade do |t|
    t.string   "paisnombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partidas", force: :cascade do |t|
    t.string   "titulo"
    t.string   "description"
    t.decimal  "medicion",           precision: 7, scale: 2
    t.string   "comentario"
    t.string   "foto"
    t.string   "categoria"
    t.integer  "reform_id"
    t.integer  "habitacion_id"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "user_id"
    t.string   "um"
    t.string   "desc_tecnica"
    t.string   "material"
    t.string   "cond_previas"
    t.string   "fases"
    t.string   "cond_terminacion"
    t.string   "man_obra"
    t.decimal  "rendimiento",        precision: 5, scale: 2
    t.string   "mat_incluidos"
    t.string   "mat_aportar"
    t.decimal  "importe",            precision: 5, scale: 2
    t.string   "empresa"
    t.string   "nombre_invitado"
    t.string   "email_invitado"
    t.string   "provincia_invitado"
    t.string   "plazo_invitado"
  end

  create_table "pavimentos", force: :cascade do |t|
    t.string  "description"
    t.string  "name"
    t.string  "int_ext"
    t.string  "medidas"
    t.string  "acabado"
    t.string  "resbaladicidad"
    t.string  "trafico"
    t.string  "rayadura"
    t.decimal "precio"
    t.string  "unidad"
  end

  create_table "plazas", force: :cascade do |t|
    t.string   "name"
    t.string   "ciudad"
    t.string   "foto"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "description"
    t.boolean  "causa"
    t.boolean  "action"
    t.boolean  "administrative"
  end

  create_table "presupuestos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "reform_id"
    t.integer  "habitacion_id"
    t.decimal  "demo_quitar_azulejo",                     precision: 7, scale: 2
    t.string   "demo_quitar_azulejo_comment"
    t.decimal  "demo_quitar_baldosa",                     precision: 7, scale: 2
    t.string   "demo_quitar_baldosa_comment"
    t.decimal  "demo_quitar_inodoro",                     precision: 7, scale: 2
    t.string   "demo_quitar_inodoro_comment"
    t.decimal  "demo_quitar_bidet",                       precision: 7, scale: 2
    t.string   "demo_quitar_bidet_comment"
    t.decimal  "demo_quitar_plato_ducha",                 precision: 7, scale: 2
    t.string   "demo_quitar_plato_ducha_comment"
    t.decimal  "demo_quitar_mampara",                     precision: 7, scale: 2
    t.string   "demo_quitar_mampara_comment"
    t.decimal  "demo_quitar_mueble_bano",                 precision: 7, scale: 2
    t.string   "demo_quitar_mueble_bano_comment"
    t.decimal  "demo_quitar_banera",                      precision: 7, scale: 2
    t.string   "demo_quitar_banera_comment"
    t.decimal  "demo_quitar_falso_techo",                 precision: 7, scale: 2
    t.string   "demo_quitar_falso_techo_comment"
    t.decimal  "demo_quitar_tabique",                     precision: 7, scale: 2
    t.string   "demo_quitar_tabique_comment"
    t.decimal  "demo_quitar_mobi_cocina",                 precision: 7, scale: 2
    t.string   "demo_quitar_mobi_cocina_comment"
    t.decimal  "demo_retir_electrodomesticos",            precision: 7, scale: 2
    t.string   "demo_retir_electrodomesticos_comment"
    t.decimal  "demo_quitar_mueble",                      precision: 7, scale: 2
    t.string   "demo_quitar_mueble_comment"
    t.decimal  "demo_friso_madera",                       precision: 7, scale: 2
    t.string   "demo_friso_madera_comment"
    t.decimal  "tub_termo_electrico",                     precision: 7, scale: 2
    t.string   "tub_termo_electrico_comment"
    t.decimal  "tub_radiador",                            precision: 7, scale: 2
    t.string   "tub_radiador_comment"
    t.decimal  "tub_lavabo",                              precision: 7, scale: 2
    t.string   "tub_lavabo_comment"
    t.decimal  "tub_ducha_banera",                        precision: 7, scale: 2
    t.string   "tub_ducha_banera_comment"
    t.decimal  "tub_bidet",                               precision: 7, scale: 2
    t.string   "tub_bidet_comment"
    t.decimal  "tub_inodoro",                             precision: 7, scale: 2
    t.string   "tub_inodoro_comment"
    t.decimal  "tub_colum_hidromasaje",                   precision: 7, scale: 2
    t.string   "tub_colum_hidromasaje_comment"
    t.decimal  "tub_lavabo_doble",                        precision: 7, scale: 2
    t.string   "tub_lavabo_doble_comment"
    t.decimal  "tub_jacuzzy",                             precision: 7, scale: 2
    t.string   "tub_jacuzzy_comment"
    t.decimal  "tub_sauna",                               precision: 7, scale: 2
    t.string   "tub_sauna_comment"
    t.decimal  "tub_ducha_empotrada",                     precision: 7, scale: 2
    t.string   "tub_ducha_empotrada_comment"
    t.decimal  "tub_toallero",                            precision: 7, scale: 2
    t.string   "tub_toallero_comment"
    t.decimal  "tub_reubicar_contador",                   precision: 7, scale: 2
    t.string   "tub_reubicar_contador_comment"
    t.decimal  "tub_lavadora",                            precision: 7, scale: 2
    t.string   "tub_lavadora_comment"
    t.decimal  "tub_reubicar_inodoro",                    precision: 7, scale: 2
    t.string   "tub_reubicar_inodoro_comment"
    t.decimal  "tub_tipo"
    t.decimal  "tub_caldera",                             precision: 7, scale: 2
    t.string   "tub_caldera_comment"
    t.decimal  "tub_fregadero",                           precision: 7, scale: 2
    t.string   "tub_fregadero_comment"
    t.decimal  "tub_lavavajillas",                        precision: 7, scale: 2
    t.string   "tub_lavavajillas_comment"
    t.decimal  "tub_secadora",                            precision: 7, scale: 2
    t.string   "tub_secadora_comment"
    t.decimal  "elec_pto_luz_techo",                      precision: 7, scale: 2
    t.string   "elec_pto_luz_techo_comment"
    t.decimal  "elec_pto_luz_pared",                      precision: 7, scale: 2
    t.string   "elec_pto_luz_pared_comment"
    t.decimal  "elec_interr_simple",                      precision: 7, scale: 2
    t.string   "elec_interr_simple_comment"
    t.decimal  "elec_interr_doble",                       precision: 7, scale: 2
    t.string   "elec_interr_doble_comment"
    t.decimal  "elec_interr_triple",                      precision: 7, scale: 2
    t.string   "elec_interr_triple_comment"
    t.decimal  "elec_enchu_simple",                       precision: 7, scale: 2
    t.string   "elec_enchu_simple_comment"
    t.decimal  "elec_enchu_doble",                        precision: 7, scale: 2
    t.string   "elec_enchu_doble_comment"
    t.decimal  "elec_enchu_triple",                       precision: 7, scale: 2
    t.string   "elec_enchu_triple_comment"
    t.decimal  "elec_reubicar_caja_luz",                  precision: 7, scale: 2
    t.string   "elec_reubicar_caja_luz_comment"
    t.decimal  "elec_toma_lavadora",                      precision: 7, scale: 2
    t.string   "elec_toma_lavadora_comment"
    t.decimal  "elec_toma_ventilador_extractor",          precision: 7, scale: 2
    t.string   "elec_toma_ventilador_extractor_comment"
    t.decimal  "elec_toma_horno_vitroceramica",           precision: 7, scale: 2
    t.string   "elec_toma_horno_vitroceramica_comment"
    t.decimal  "elec_toma_microondas",                    precision: 7, scale: 2
    t.string   "elec_toma_microondas_comment"
    t.decimal  "elec_toma_frigorifico",                   precision: 7, scale: 2
    t.string   "elec_toma_frigorifico_comment"
    t.decimal  "elec_toma_lavavajillas",                  precision: 7, scale: 2
    t.string   "elec_toma_lavavajillas_comment"
    t.decimal  "elec_toma_secadora",                      precision: 7, scale: 2
    t.string   "elec_toma_secadora_comment"
    t.decimal  "elec_toma_telefono",                      precision: 7, scale: 2
    t.string   "elec_toma_telefono_comment"
    t.decimal  "demo_quitar_azulejos",                    precision: 7, scale: 2
    t.string   "demo_quitar_azulejos_comment"
    t.decimal  "demo_quitar_baldosas",                    precision: 7, scale: 2
    t.string   "demo_quitar_baldosas_comment"
    t.decimal  "demo_falso_techo",                        precision: 7, scale: 2
    t.string   "demo_falso_techo_comment"
    t.decimal  "demo_tabique",                            precision: 7, scale: 2
    t.string   "demo_tabique_comment"
    t.decimal  "demo_inodoro",                            precision: 7, scale: 2
    t.string   "demo_inodoro_comment"
    t.decimal  "demo_bidet",                              precision: 7, scale: 2
    t.string   "demo_bidet_comment"
    t.decimal  "demo_plato_ducha",                        precision: 7, scale: 2
    t.string   "demo_plato_ducha_comment"
    t.decimal  "demo_mampara",                            precision: 7, scale: 2
    t.string   "demo_mampara_comment"
    t.decimal  "demo_mueble_bano",                        precision: 7, scale: 2
    t.string   "demo_mueble_bano_comment"
    t.decimal  "demo_banera",                             precision: 7, scale: 2
    t.string   "demo_banera_comment"
    t.decimal  "demo_mobiliario_cocina",                  precision: 7, scale: 2
    t.string   "demo_mobiliario_cocina_comment"
    t.decimal  "demo_electrodomesticos",                  precision: 7, scale: 2
    t.string   "demo_electrodomesticos_comment"
    t.decimal  "demo_frisos_madera",                      precision: 7, scale: 2
    t.string   "demo_frisos_madera_comment"
    t.decimal  "demo_muebles",                            precision: 7, scale: 2
    t.string   "demo_muebles_comment"
    t.decimal  "alb_azulejo",                             precision: 7, scale: 2
    t.string   "alb_azulejo_comment"
    t.decimal  "alb_tipo_azulejo",                        precision: 7, scale: 2
    t.string   "alb_tipo_azulejo_comment"
    t.decimal  "alb_baldosa",                             precision: 7, scale: 2
    t.string   "alb_baldosa_comment"
    t.decimal  "alb_tipo_baldosa",                        precision: 7, scale: 2
    t.string   "alb_tipo_baldosa_comment"
    t.decimal  "alb_techo_pladur",                        precision: 7, scale: 2
    t.string   "alb_techo_pladur_comment"
    t.decimal  "alb_tabique_ladriyeso",                   precision: 7, scale: 2
    t.string   "alb_tabique_ladriyeso_comment"
    t.decimal  "alb_tabique_pladur",                      precision: 7, scale: 2
    t.string   "alb_tabique_pladur_comment"
    t.decimal  "alb_tabique_fabrica",                     precision: 7, scale: 2
    t.string   "alb_tabique_fabrica_comment"
    t.decimal  "alb_tabique_paves",                       precision: 7, scale: 2
    t.string   "alb_tabique_paves_comment"
    t.decimal  "alb_nivelacion_pared",                    precision: 7, scale: 2
    t.string   "alb_nivelacion_pared_comment"
    t.decimal  "mont_sani_mampara",                       precision: 7, scale: 2
    t.string   "mont_sani_mampara_comment"
    t.decimal  "mont_sani_mueble_bano",                   precision: 7, scale: 2
    t.string   "mont_sani_mueble_bano_comment"
    t.decimal  "mont_sani_banera",                        precision: 7, scale: 2
    t.string   "mont_sani_banera_comment"
    t.decimal  "mont_sani_plato_ducha",                   precision: 7, scale: 2
    t.string   "mont_sani_plato_ducha_comment"
    t.decimal  "mont_sani_bidet",                         precision: 7, scale: 2
    t.string   "mont_sani_bidet_comment"
    t.decimal  "mont_sani_inodoro_normal",                precision: 7, scale: 2
    t.string   "mont_sani_inodoro_normal_comment"
    t.decimal  "mont_sani_inodoro_suspendido",            precision: 7, scale: 2
    t.string   "mont_sani_inodoro_suspendido_comment"
    t.decimal  "mont_sani_inodoro_encastrado",            precision: 7, scale: 2
    t.string   "mont_sani_inodoro_encastrado_comment"
    t.decimal  "mont_sani_grifo_ducha",                   precision: 7, scale: 2
    t.string   "mont_sani_grifo_ducha_comment"
    t.decimal  "mont_sani_grifo_banera",                  precision: 7, scale: 2
    t.string   "mont_sani_grifo_banera_comment"
    t.decimal  "mont_sani_acceso_atornillado",            precision: 7, scale: 2
    t.string   "mont_sani_acceso_atornillado_comment"
    t.decimal  "mont_sani_colum_hidromasaje",             precision: 7, scale: 2
    t.string   "mont_sani_colum_hidromasaje_comment"
    t.decimal  "mont_sani_cabina_ducha",                  precision: 7, scale: 2
    t.string   "mont_sani_cabina_ducha_comment"
    t.decimal  "mont_sani_plato_ducha_obra",              precision: 7, scale: 2
    t.string   "mont_sani_plato_ducha_obra_comment"
    t.decimal  "mont_sani_lavabo_pedestal",               precision: 7, scale: 2
    t.string   "mont_sani_lavabo_pedestal_comment"
    t.decimal  "mont_electro_mueble_alto_cocina",         precision: 7, scale: 2
    t.string   "mont_electro_mueble_alto_cocina_comment"
    t.decimal  "mont_electro_mueble_bajo_cocina",         precision: 7, scale: 2
    t.string   "mont_electro_mueble_bajo_cocina_comment"
    t.decimal  "mont_electro_horno_electrico",            precision: 7, scale: 2
    t.string   "mont_electro_horno_electrico_comment"
    t.decimal  "mont_electro_placa_vitro",                precision: 7, scale: 2
    t.string   "mont_electro_placa_vitro_comment"
    t.decimal  "mont_electro_placa_electrica",            precision: 7, scale: 2
    t.string   "mont_electro_placa_electrica_comment"
    t.decimal  "mont_electro_lavadora",                   precision: 7, scale: 2
    t.string   "mont_electro_lavadora_comment"
    t.decimal  "mont_electro_frigorifico",                precision: 7, scale: 2
    t.string   "mont_electro_frigorifico_comment"
    t.decimal  "mont_electro_lavavajillas",               precision: 7, scale: 2
    t.string   "mont_electro_lavavajillas_comment"
    t.decimal  "mont_electro_microondas",                 precision: 7, scale: 2
    t.string   "mont_electro_microondas_comment"
    t.decimal  "mont_electro_secadora",                   precision: 7, scale: 2
    t.string   "mont_electro_secadora_comment"
    t.decimal  "mont_fregadero",                          precision: 7, scale: 2
    t.string   "mont_fregadero_comment"
    t.decimal  "mont_grifo_fregadero",                    precision: 7, scale: 2
    t.string   "mont_grifo_fregadero_comment"
    t.decimal  "colo_pmarcha_termo_elect_a",              precision: 7, scale: 2
    t.string   "colo_pmarcha_termo_elect_a_comment"
    t.decimal  "colo_pmarcha_termo_elect_b",              precision: 7, scale: 2
    t.string   "colo_pmarcha_termo_elect_b_comment"
    t.decimal  "colo_pmarcha_termo_elect_c",              precision: 7, scale: 2
    t.string   "colo_pmarcha_termo_elect_c_comment"
    t.decimal  "colo_pmarcha_termo_elect_d",              precision: 7, scale: 2
    t.string   "colo_pmarcha_termo_elect_d_comment"
    t.decimal  "colo_pmarcha_termo_elect_e",              precision: 7, scale: 2
    t.string   "colo_pmarcha_termo_elect_e_comment"
    t.decimal  "colo_pmarcha_termo_elect_f",              precision: 7, scale: 2
    t.string   "colo_pmarcha_termo_elect_f_comment"
    t.decimal  "colo_pmarcha_calde_atmos",                precision: 7, scale: 2
    t.string   "colo_pmarcha_calde_atmos_comment"
    t.decimal  "colo_pmarcha_calde_bajo_nox",             precision: 7, scale: 2
    t.string   "colo_pmarcha_calde_bajo_nox_comment"
    t.decimal  "colo_pmarcha_calde_estanca",              precision: 7, scale: 2
    t.string   "colo_pmarcha_calde_estanca_comment"
    t.decimal  "techo_pintar",                            precision: 7, scale: 2
    t.string   "techo_pintar_comment"
    t.decimal  "techo_tipo_pintura",                      precision: 7, scale: 2
    t.string   "techo_tipo_pintura_comment"
    t.decimal  "techo_alisar",                            precision: 7, scale: 2
    t.string   "techo_alisar_comment"
    t.decimal  "techo_reparar_humedad",                   precision: 7, scale: 2
    t.string   "techo_reparar_humedad_comment"
    t.decimal  "pared_empapelar",                         precision: 7, scale: 2
    t.string   "pared_empapelar_comment"
    t.decimal  "pared_quitar_papel",                      precision: 7, scale: 2
    t.string   "pared_quitar_papel_comment"
    t.decimal  "pared_alisar",                            precision: 7, scale: 2
    t.string   "pared_alisar_comment"
    t.decimal  "pared_pintar",                            precision: 7, scale: 2
    t.string   "pared_pintar_comment"
    t.decimal  "pared_reparar_humedad",                   precision: 7, scale: 2
    t.string   "pared_reparar_humedad_comment"
    t.decimal  "carpin_friso",                            precision: 7, scale: 2
    t.string   "carpin_friso_comment"
    t.decimal  "puerta_colocar",                          precision: 7, scale: 2
    t.string   "puerta_colocar_comment"
    t.decimal  "puerta_tipo",                             precision: 7, scale: 2
    t.string   "puerta_tipo_comment"
    t.decimal  "puerta_cambio_precerco",                  precision: 7, scale: 2
    t.string   "puerta_cambio_precerco_comment"
    t.decimal  "ventana_colocar",                         precision: 7, scale: 2
    t.string   "ventana_colocar_comment"
    t.decimal  "ventana_tipo",                            precision: 7, scale: 2
    t.string   "ventana_tipo_comment"
    t.decimal  "ventana_contraventana",                   precision: 7, scale: 2
    t.string   "ventana_contraventana_comment"
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.integer  "partida_id"
    t.decimal  "partida_importe",                         precision: 7, scale: 2
    t.string   "partida_comentario"
  end

  create_table "provincia", force: :cascade do |t|
    t.integer  "id_provincia"
    t.string   "provincia"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "comunidad_id"
  end

  create_table "pueblos", force: :cascade do |t|
    t.integer  "id_provincia"
    t.integer  "cod_municipio"
    t.integer  "DC"
    t.string   "nombre"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "puerta", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.string  "material"
    t.string  "medidas"
    t.decimal "precio"
  end

  create_table "reforms", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "localidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nombre"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
    t.index ["follower_id"], name: "index_relationships_on_follower_id", using: :btree
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "subid"
    t.string  "um"
    t.string  "task"
    t.string  "description"
    t.string  "material"
    t.string  "nombre"
    t.string  "codigo"
    t.decimal "importe",          precision: 7, scale: 2
    t.string  "desc_tecnica"
    t.string  "cond_previas"
    t.string  "fases"
    t.string  "cond_terminacion"
    t.string  "man_obra"
    t.decimal "rendimiento",      precision: 5, scale: 2
    t.string  "mat_incluido"
    t.string  "mat_aportar"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "ciudad"
    t.string   "profesion"
    t.string   "foto"
    t.integer  "followers_count",   default: 0
    t.string   "ciudad_secundaria"
    t.boolean  "plaza"
    t.integer  "created_by"
    t.string   "linkedin"
    t.string   "description"
    t.string   "ciudad_terciaria"
    t.string   "pais"
    t.boolean  "candidate"
    t.boolean  "empresa"
    t.string   "direccion"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "pinterest"
    t.string   "experiencia"
    t.string   "servicio1"
    t.string   "servicio2"
    t.string   "servicio3"
    t.string   "servicio4"
    t.string   "servicio5"
    t.string   "servicio6"
    t.string   "servicio7"
    t.string   "servicio8"
    t.string   "servicio9"
    t.string   "servicio10"
    t.string   "servicio11"
    t.string   "servicio12"
    t.string   "servicio13"
    t.string   "servicio14"
    t.string   "servicio15"
    t.string   "servicio16"
    t.string   "servicio17"
    t.string   "servicio18"
    t.string   "servicio19"
    t.string   "servicio20"
    t.string   "servicio21"
    t.string   "servicio22"
    t.string   "servicio23"
    t.string   "servicio24"
    t.string   "email_publico"
    t.string   "telefono_publico"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "ventanas", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.string  "material"
    t.string  "medidas"
    t.decimal "precio"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "micropost_id"
    t.integer  "user_id"
    t.integer  "like"
    t.integer  "dislike"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "microposts", "users"
end
