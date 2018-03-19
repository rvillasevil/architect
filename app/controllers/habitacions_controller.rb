class HabitacionsController < ApplicationController
  before_action :set_habitacion, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy, :index, :new, :create, :update]


  # GET /habitacions
  # GET /habitacions.json
  def index
    @habitacions = Habitacion.all
  end

  # GET /habitacions/1
  # GET /habitacions/1.json
  def show
    if (@budget = Budget.find_by(habitacion_id: params[:id])) != nil
      @budget = Budget.find_by(habitacion_id: params[:id])
    else
      @budget = Budget.new
    end    
  end

  # GET /habitacions/new
  def new
    @habitacion = Habitacion.new
  end

  # GET /habitacions/1/edit
  def edit
    @habitacion = Habitacion.find_by(id: params[:id], reform_id: params[:reform_id])
  end

  # POST /habitacions
  # POST /habitacions.json
  def create
    @habitacion = Habitacion.new(habitacion_params)
    @reform = Reform.find_by(id: params[:reform_id])
    if logged_in?
      respond_to do |format|
        if @habitacion.save
          format.html { redirect_to reform_habitacion_path(id: @habitacion, reform_id: @habitacion.reform_id), notice: 'Habitacion was successfully created.' }
          format.json { render :show, status: :created, location: @habitacion }
        else
          format.html { redirect_back(fallback_location: reform_path(id: @habitacion.reform_id), notice: 'La habitación no ha podido crearse. Inténtalo de nuevo y no te olvides del nombre.') }
          format.json { render json: @habitacion.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to signup_path
    end
  end

  # PATCH/PUT /habitacions/1
  # PATCH/PUT /habitacions/1.json
  def update
    respond_to do |format|
      if @habitacion.update(habitacion_params)
        format.html { redirect_to reform_habitacion_path(id: params[:id], reform_id: @habitacion.reform_id), notice: 'Habitacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @habitacion }
      else
        format.html { render :edit }
        format.json { render json: @habitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitacions/1
  # DELETE /habitacions/1.json
  def destroy
    @reform = Reform.find(params[:reform_id])
    @habitacion.destroy
    respond_to do |format|
      format.html { redirect_to @reform, notice: 'Habitacion was successfully destroyed.' }
      # format.html { redirect_to reform_habitacions_path(reform_id: @habitacion.reform_id), notice: 'Habitacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habitacion
      @habitacion = Habitacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habitacion_params
      params.require(:habitacion).permit(:nombre, :user_id, :reform_id, :demo_quitar_azulejo, :demo_quitar_baldosa, :demo_quitar_inodoro, :demo_quitar_bidet, :demo_quitar_plato_ducha, :demo_quitar_mampara, :demo_quitar_mueble_bano, :demo_quitar_banera, :demo_quitar_falso_techo, :demo_quitar_tabique, :demo_quitar_mobi_cocina, :demo_retir_electrodomesticos, :demo_quitar_mueble, :demo_friso_madera, :tub_termo_electrico, :tub_radiador, :tub_lavabo, :tub_ducha_banera, :tub_bidet, :tub_inodoro, :tub_colum_hidromasaje, :tub_lavabo_doble, :tub_jacuzzy, :tub_sauna, :tub_ducha_empotrada, :tub_toallero, :tub_reubicar_contador, :tub_lavadora, :tub_reubicar_inodoro, :tub_tipo, :tub_caldera, :tub_fregadero, :tub_lavavajillas, :tub_secadora, :elec_pto_luz_techo, :elec_pto_luz_pared, :elec_interr_simple, :elec_interr_doble, :elec_interr_triple, :elec_enchu_simple, :elec_enchu_doble, :elec_enchu_triple, :elec_reubicar_caja_luz, :elec_toma_lavadora, :elec_toma_ventilador_extractor, :elec_toma_horno_vitroceramica, :elec_toma_microondas, :elec_toma_frigorifico, :elec_toma_lavavajillas, :elec_toma_secadora, :elec_toma_telefono, :demo_quitar_azulejos, :demo_quitar_baldosas, :demo_falso_techo, :demo_tabique,:demo_inodoro, :demo_bidet, :demo_plato_ducha, :demo_mampara, :demo_mueble_bano, :demo_banera, :demo_mobiliario_cocina, :demo_electrodomesticos, :demo_frisos_madera, :demo_muebles, :alb_azulejo, :alb_tipo_azulejo, :alb_baldosa, :alb_tipo_baldosa, :alb_techo_pladur, :alb_tabique_ladriyeso, :alb_tabique_pladur, :alb_tabique_fabrica, :alb_tabique_paves, :alb_nivelacion_pared, :mont_sani_mampara, :mont_sani_mueble_bano, :mont_sani_banera, :mont_sani_plato_ducha, :mont_sani_bidet, :mont_sani_inodoro_normal, :mont_sani_inodoro_suspendido, :mont_sani_inodoro_encastrado, :mont_sani_grifo_ducha, :mont_sani_grifo_banera, :mont_sani_acceso_atornillado, :mont_sani_colum_hidromasaje, :mont_sani_cabina_ducha, :mont_sani_plato_ducha_obra, :mont_sani_lavabo_pedestal,:mont_electro_mueble_alto_cocina, :mont_electro_mueble_bajo_cocina, :mont_electro_horno_electrico, :mont_electro_placa_vitro, :mont_electro_placa_electrica, :mont_electro_lavadora, :mont_electro_frigorifico, :mont_electro_lavavajillas, :mont_electro_microondas, :mont_electro_secadora, :mont_fregadero, :mont_grifo_fregadero, :colo_pmarcha_termo_elect_a, :colo_pmarcha_termo_elect_b, :colo_pmarcha_termo_elect_c, :colo_pmarcha_termo_elect_d, :colo_pmarcha_termo_elect_e, :colo_pmarcha_termo_elect_f, :colo_pmarcha_calde_atmos, :colo_pmarcha_calde_bajo_nox, :colo_pmarcha_calde_estanca, :techo_pintar, :techo_tipo_pintura, :techo_alisar, :techo_reparar_humedad, :pared_empapelar, :pared_quitar_papel, :pared_alisar, :pared_pintar, :pared_reparar_humedad, :carpin_friso, :puerta_colocar, :puerta_tipo, :puerta_cambio_precerco, :ventana_colocar, :ventana_tipo, :ventana_contraventana,  :demo_quitar_azulejo_comment, :demo_quitar_baldosa_comment, :demo_quitar_falso_techo_comment, :demo_quitar_tabique_comment, :demo_quitar_inodoro_comment, :demo_quitar_bidet_comment, :demo_quitar_plato_ducha_comment, :demo_quitar_mampara_comment, :demo_quitar_mueble_bano_comment, :demo_quitar_banera_comment, :demo_quitar_mobi_cocina_comment, :demo_retir_electrodomesticos_comment, :demo_friso_madera_comment, :demo_quitar_mueble_comment, :tub_termo_electrico_comment, :tub_radiador_comment, :tub_lavabo_comment, :tub_ducha_banera_comment, :tub_bidet_comment, :tub_inodoro_comment, :tub_colum_hidromasaje_comment, :tub_lavabo_doble_comment, :tub_jacuzzy_comment, :tub_sauna_comment, :tub_ducha_empotrada_comment, :tub_toallero_comment, :tub_reubicar_contador_comment, :tub_lavadora_comment, :tub_reubicar_inodoro_comment, :tub_tipo_comment, :tub_caldera_comment, :tub_fregadero_comment, :tub_lavavajillas_comment, :tub_secadora_comment, :elec_pto_luz_techo_comment, :elec_pto_luz_pared_comment, :elec_interr_simple_comment, :elec_interr_doble_comment, :elec_interr_triple_comment, :elec_enchu_simple_comment, :elec_enchu_doble_comment, :elec_enchu_triple_comment, :elec_reubicar_caja_luz_comment, :elec_toma_lavadora_comment, :elec_toma_ventilador_extractor_comment, :elec_toma_horno_vitroceramica_comment, :elec_toma_microondas_comment, :elec_toma_frigorifico_comment, :elec_toma_lavavajillas_comment, :elec_toma_secadora_comment, :elec_toma_telefono_comment, :alb_azulejo_comment, :alb_tipo_azulejo_comment, :alb_baldosa_comment, :alb_tipo_baldosa_comment, :alb_techo_pladur_comment, :alb_tabique_ladriyeso_comment, :alb_tabique_pladur_comment, :alb_tabique_fabrica_comment, :alb_tabique_paves_comment, :alb_nivelacion_pared_comment, :mont_sani_mampara_comment, :mont_sani_mueble_bano_comment, :mont_sani_banera_comment, :mont_sani_plato_ducha_comment, :mont_sani_bidet_comment, :mont_sani_inodoro_normal_comment, :mont_sani_inodoro_suspendido_comment, :mont_sani_inodoro_encastrado_comment, :mont_sani_grifo_ducha_comment, :mont_sani_grifo_banera_comment, :mont_sani_acceso_atornillado_comment, :mont_sani_colum_hidromasaje_comment, :mont_sani_cabina_ducha_comment, :mont_sani_plato_ducha_obra_comment, :mont_sani_lavabo_pedestal_comment, :mont_electro_mueble_alto_cocina_comment, :mont_electro_mueble_bajo_cocina_comment, :mont_electro_horno_electrico_comment, :mont_electro_placa_vitro_comment, :mont_electro_placa_electrica_comment, :mont_electro_lavadora_comment, :mont_electro_frigorifico_comment, :mont_electro_lavavajillas_comment, :mont_electro_microondas_comment, :mont_electro_secadora_comment, :mont_fregadero_comment, :mont_grifo_fregadero_comment, :colo_pmarcha_termo_elect_a_comment, :colo_pmarcha_termo_elect_b_comment, :colo_pmarcha_termo_elect_c_comment, :colo_pmarcha_termo_elect_d_comment, :colo_pmarcha_termo_elect_e_comment, :colo_pmarcha_termo_elect_f_comment, :colo_pmarcha_calde_atmos_comment, :colo_pmarcha_calde_bajo_nox_comment, :colo_pmarcha_calde_estanca_comment, :techo_pintar_comment, :techo_tipo_pintura_comment, :techo_alisar_comment, :techo_reparar_humedad_comment, :pared_empapelar_comment, :pared_quitar_papel_comment, :pared_alisar_comment, :pared_pintar_comment, :pared_reparar_humedad_comment, :carpin_friso_comment, :puerta_colocar_comment, :puerta_tipo_comment, :puerta_cambio_precerco_comment, :ventana_colocar_comment, :ventana_tipo_comment, :ventana_contraventana_comment)
    end
end
