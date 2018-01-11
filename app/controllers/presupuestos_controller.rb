class PresupuestosController < ApplicationController
  before_action :set_presupuesto, only: [:show, :edit, :update, :destroy]

  # GET /presupuestos
  # GET /presupuestos.json
  def index
    if current_user.empresa == true
    @presupuestos = Presupuesto.all
    @ofertas = Confirmacion.where(usuario: true)
    else
      redirect_to root_path
    end
  end

  # GET /presupuestos/1
  # GET /presupuestos/1.json
  def show
    if current_user.empresa == true
      @habitacion = Habitacion.find_by(id: @presupuesto.habitacion_id)
      if (@budget = Budget.find_by(habitacion_id: @presupuesto.habitacion_id, user_id: current_user.id)) != nil
        @budget = Budget.find_by(habitacion_id: @presupuesto.habitacion_id, user_id: current_user.id)
      else
        @budget = Budget.new
      end
    else
      redirect_to root_path
    end     
  end

  # GET /presupuestos/new
  def new
    @presupuesto = Presupuesto.new
  end

  # GET /presupuestos/1/edit
  def edit
    @habitacion = Habitacion.find_by(id: @presupuesto.habitacion_id)
  end

  # POST /presupuestos
  # POST /presupuestos.json
  def create
    @presupuesto = Presupuesto.new(presupuesto_params)

    respond_to do |format|
      if @presupuesto.save
        format.html { redirect_to presupuesto_path(@presupuesto), notice: 'Presupuesto was successfully created.' }
        format.json { render :show, status: :created, location: @presupuesto }
      else
        format.html { render :new }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presupuestos/1
  # PATCH/PUT /presupuestos/1.json
  def update 
    respond_to do |format|
      if @presupuesto.update(presupuesto_params)
        format.html { redirect_to presupuesto_path(id: @presupuesto), notice: 'Presupuesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @presupuesto }
      else
        format.html { render :edit }
        format.json { render json: @presupuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # Aquí van las habitaciones de cada una de las reformas para dotarlas de un presupuesto a cada partida
  def presupuesto_reform
    @reform = Reform.find(params[:id])
    @presupuestos = Presupuesto.where(reform_id: @reform.id)
    @confirmacion = Confirmacion.new 
  end

  # DELETE /presupuestos/1
  # DELETE /presupuestos/1.json
  def destroy
    @presupuesto.destroy
    respond_to do |format|
      format.html { redirect_to presupuestos_url, notice: 'Presupuesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presupuesto
      @presupuesto = Presupuesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presupuesto_params
      params.require(:presupuesto).permit(:user_id, :reform_id, :habitacion_id, :demo_quitar_azulejo, :demo_quitar_azulejo_comment, :demo_quitar_baldosa, :demo_quitar_baldosa_comment, :demo_quitar_falso_techo, :demo_quitar_falso_techo_comment, :demo_quitar_tabique, :demo_quitar_tabique_comment, :demo_quitar_inodoro, :demo_quitar_inodoro_comment, :demo_quitar_bidet, :demo_quitar_bidet_comment, :demo_quitar_plato_ducha, :demo_quitar_plato_ducha_comment, :demo_quitar_mampara, :demo_quitar_mampara_comment, :demo_quitar_mueble_bano, :demo_quitar_mueble_bano_comment, :demo_quitar_banera, :demo_quitar_banera_comment, :demo_quitar_mobi_bano, :demo_quitar_mobi_bano_comment, :demo_retir_electrodomesticos, :demo_retir_electrodomesticos_comment, :demo_friso_madera, :demo_friso_madera_comment, :demo_quitar_mueble, :demo_quitar_mueble_comment, :tub_termo_electrico, :tub_termo_electrico_comment, :tub_radiador, :tub_radiador_comment, :tub_lavabo, :tub_lavabo_comment, :tub_ducha_banera, :tub_ducha_banera_comment, :tub_bidet, :tub_bidet_comment, :tub_inodoro, :tub_inodoro_comment, :tub_colum_hidromasaje, :tub_colum_hidromasaje_comment, :tub_lavabo_doble, :tub_lavabo_doble_comment, :tub_jacuzzy, :tub_jacuzzy_comment, :tub_sauna, :tub_sauna_comment, :tub_ducha_empotrada, :tub_ducha_empotrada_comment, :tub_toallero, :tub_toallero_comment, :tub_reubicar_contador, :tub_reubicar_contador_comment, :tub_lavadora, :tub_lavadora_comment, :tub_reubicar_inodoro, :tub_reubicar_inodoro_comment, :tub_tipo, :tub_tipo_comment, :tub_caldera, :tub_caldera_comment, :tub_fregadero, :tub_fregadero_comment, :tub_lavavajillas, :tub_lavavajillas_comment, :tub_secadora, :tub_secadora_comment, :elec_pto_luz_techo, :elec_pto_luz_techo_comment, :elec_pto_luz_pared, :elec_pto_luz_pared_comment, :elec_interr_simple, :elec_interr_simple_comment, :elec_interr_doble, :elec_interr_doble_comment, :elec_interr_triple, :elec_interr_triple_comment, :elec_enchu_simple, :elec_enchu_simple_comment, :elec_enchu_doble, :elec_enchu_doble_comment, :elec_enchu_triple, :elec_enchu_triple_comment, :elec_reubicar_caja_luz, :elec_reubicar_caja_luz_comment, :elec_toma_lavadora, :elec_toma_lavadora_comment, :elec_toma_ventilador_extractor, :elec_toma_ventilador_extractor_comment, :elec_toma_horno_vitroceramica, :elec_toma_horno_vitroceramica_comment, :elec_toma_microondas, :elec_toma_microondas_comment, :elec_toma_frigorifico, :elec_toma_frigorifico_comment, :elec_toma_lavavajillas, :elec_toma_lavavajillas_comment, :elec_toma_secadora, :elec_toma_secadora_comment, :elec_toma_telefono, :elec_toma_telefono_comment, :alb_azulejo, :alb_azulejo_comment, :alb_tipo_azulejo, :alb_tipo_azulejo_comment, :alb_baldosa, :alb_baldosa_comment, :alb_tipo_baldosa, :alb_tipo_baldosa_comment, :alb_techo_pladur, :alb_techo_pladur_comment, :alb_tabique_ladriyeso, :alb_tabique_ladriyeso_comment, :alb_tabique_pladur, :alb_tabique_pladur_comment, :alb_tabique_fabrica, :alb_tabique_fabrica_comment, :alb_tabique_paves, :alb_tabique_paves_comment, :alb_nivelacion_pared, :alb_nivelacion_pared_comment, :mont_sani_mampara, :mont_sani_mampara_comment, :mont_sani_mueble_bano, :mont_sani_mueble_bano_comment, :mont_sani_banera, :mont_sani_banera_comment, :mont_sani_plato_ducha, :mont_sani_plato_ducha_comment, :mont_sani_bidet, :mont_sani_bidet_comment, :mont_sani_inodoro_normal, :mont_sani_inodoro_normal_comment, :mont_sani_inodoro_suspendido, :mont_sani_inodoro_suspendido_comment, :mont_sani_inodoro_encastrado, :mont_sani_inodoro_encastrado_comment, :mont_sani_grifo_ducha, :mont_sani_grifo_ducha_comment, :mont_sani_grifo_banera, :mont_sani_grifo_banera_comment, :mont_sani_acceso_atornillado, :mont_sani_acceso_atornillado_comment, :mont_sani_colum_hidromasaje, :mont_sani_colum_hidromasaje_comment, :mont_sani_cabina_ducha, :mont_sani_cabina_ducha_comment, :mont_sani_plato_ducha_obra, :mont_sani_plato_ducha_obra_comment, :mont_sani_lavabo_pedestal, :mont_sani_lavabo_pedestal_comment, :mont_electro_mueble_alto_cocina, :mont_electro_mueble_alto_cocina_comment, :mont_electro_mueble_bajo_cocina, :mont_electro_mueble_bajo_cocina_comment, :mont_electro_horno_electrico, :mont_electro_horno_electrico_comment, :mont_electro_placa_vitro, :mont_electro_placa_vitro_comment, :mont_electro_placa_electrica, :mont_electro_placa_electrica_comment, :mont_electro_lavadora, :mont_electro_lavadora_comment, :mont_electro_frigorifico, :mont_electro_frigorifico_comment, :mont_electro_lavavajillas, :mont_electro_lavavajillas_comment, :mont_electro_microondas, :mont_electro_microondas_comment, :mont_electro_secadora, :mont_electro_secadora_comment, :mont_fregadero, :mont_fregadero_comment, :mont_grifo_fregadero, :mont_grifo_fregadero_comment, :colo_pmarcha_termo_elect_a, :colo_pmarcha_termo_elect_a_comment, :colo_pmarcha_termo_elect_b, :colo_pmarcha_termo_elect_b_comment, :colo_pmarcha_termo_elect_c, :colo_pmarcha_termo_elect_c_comment, :colo_pmarcha_termo_elect_d, :colo_pmarcha_termo_elect_d_comment, :colo_pmarcha_termo_elect_e, :colo_pmarcha_termo_elect_e_comment, :colo_pmarcha_termo_elect_f, :colo_pmarcha_termo_elect_f_comment, :colo_pmarcha_calde_atmos, :colo_pmarcha_calde_atmos_comment, :colo_pmarcha_calde_bajo_nox, :colo_pmarcha_calde_bajo_nox_comment, :colo_pmarcha_calde_estanca, :colo_pmarcha_calde_estanca_comment, :techo_pintar, :techo_pintar_comment, :techo_tipo_pintura, :techo_tipo_pintura_comment, :techo_alisar, :techo_alisar_comment, :techo_reparar_humedad, :techo_reparar_humedad_comment, :pared_empapelar, :pared_empapelar_comment, :pared_quitar_papel, :pared_quitar_papel_comment, :pared_alisar, :pared_alisar_comment, :pared_pintar, :pared_pintar_comment, :pared_reparar_humedad, :pared_reparar_humedad_comment, :carpin_friso, :carpin_friso_comment, :puerta_colocar, :puerta_colocar_comment, :puerta_tipo, :puerta_tipo_comment, :puerta_cambio_precerco, :puerta_cambio_precerco_comment, :ventana_colocar, :ventana_colocar_comment, :ventana_tipo, :ventana_tipo_comment, :ventana_contraventana, :ventana_contraventana_comment)
    end
end
