class ReformsController < ApplicationController
  before_action :set_reform, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy]

  # GET /reforms
  # GET /reforms.json
  def index
    @reforms = Reform.where(user_id: current_user)
  end

  # GET /reforms/1
  # GET /reforms/1.json
  def show
    @reform = Reform.find_by(id: params[:id])
    @banos = Bano.where(reform_id: @reform)
    @cocinas = Cocina.where(reform_id: @reform)
    @habitaciones = Habitacion.where(reform_id: @reform)
  end

  # GET /reforms/new
  def new
    @reform = Reform.new
  end

  # GET /reforms/1/edit
  def edit
  end

  # POST /reforms
  # POST /reforms.json
  def create
    @reform = Reform.new(reform_params)

    respond_to do |format|
      if @reform.save
        format.html { redirect_to @reform, notice: 'Reform was successfully created.' }
        format.json { render :show, status: :created, location: @reform }
      else
        format.html { render :new }
        format.json { render json: @reform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reforms/1
  # PATCH/PUT /reforms/1.json
  def update
    respond_to do |format|
      if @reform.update(reform_params)
        format.html { redirect_to @reform, notice: 'Reform was successfully updated.' }
        format.json { render :show, status: :ok, location: @reform }
      else
        format.html { render :edit }
        format.json { render json: @reform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reforms/1
  # DELETE /reforms/1.json
  def destroy
    @reform.destroy
    respond_to do |format|
      format.html { redirect_to reforms_url, notice: 'Reform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def resumen
    @reform = Reform.find(params[:id])
    @banos = Bano.where(reform_id: @reform)
    @cocinas = Cocina.where(reform_id: @reform)
    @habitaciones = Habitacion.where(reform_id: @reform)
    if (@budget = Budget.find_by(reform_id: @reform.id)) != nil
      @budget = Budget.find_by(reform_id: @reform.id)
    else
      @budget = Budget.new
    end
    @confirmacion = Confirmacion.new 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reform
      @reform = Reform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reform_params
      params.require(:reform).permit(:user_id, :localidad, :nombre, :demo_quitar_azulejo, :demo_quitar_baldosa, :demo_quitar_falso_techo, :demo_quitar_tabique, :demo_quitar_inodoro, :demo_quitar_bidet, :demo_quitar_plato_ducha, :demo_quitar_mampara, :demo_quitar_mueble_bano, :demo_quitar_banera, :demo_quitar_mobi_bano, :demo_retir_electrodomesticos, :demo_friso_madera, :demo_quitar_mueble, :tub_termo_electrico, :tub_radiador, :tub_lavabo, :tub_ducha_banera, :tub_bidet, :tub_inodoro, :tub_colum_hidromasaje, :tub_lavabo_doble, :tub_jacuzzy, :tub_sauna, :tub_ducha_empotrada, :tub_toallero, :tub_reubicar_contador, :tub_lavadora, :tub_reubicar_inodoro, :tub_tipo, :tub_caldera, :tub_fregadero, :tub_lavavajillas, :tub_secadora, :elec_pto_luz_techo, :elec_pto_luz_pared, :elec_interr_simple, :elec_interr_doble, :elec_interr_triple, :elec_enchu_simple, :elec_enchu_doble, :elec_enchu_triple, :elec_reubicar_caja_luz, :elec_toma_lavadora, :elec_toma_ventilador_extractor, :elec_toma_horno_vitroceramica, :elec_toma_microondas, :elec_toma_frigorifico, :elec_toma_lavavajillas, :elec_toma_secadora, :elec_toma_telefono, :alb_azulejo, :alb_tipo_azulejo, :alb_baldosa, :alb_tipo_baldosa, :alb_techo_pladur, :alb_tabique_ladriyeso, :alb_tabique_pladur, :alb_tabique_fabrica, :alb_tabique_paves, :alb_nivelacion_pared, :mont_sani_mampara, :mont_sani_mueble_bano, :mont_sani_banera, :mont_sani_plato_ducha, :mont_sani_bidet, :mont_sani_inodoro_normal, :mont_sani_inodoro_suspendido, :mont_sani_inodoro_encastrado, :mont_sani_grifo_ducha, :mont_sani_grifo_banera, :mont_sani_acceso_atornillado, :mont_sani_colum_hidromasaje, :mont_sani_cabina_ducha, :mont_sani_plato_ducha_obra, :mont_sani_lavabo_pedestal, :mont_electro_mueble_alto_cocina, :mont_electro_mueble_bajo_cocina, :mont_electro_horno_electrico, :mont_electro_placa_vitro, :mont_electro_placa_electrica, :mont_electro_lavadora, :mont_electro_frigorifico, :mont_electro_lavavajillas, :mont_electro_microondas, :mont_electro_secadora, :mont_fregadero, :mont_grifo_fregadero, :colo_pmarcha_termo_elect_a, :colo_pmarcha_termo_elect_b, :colo_pmarcha_termo_elect_c, :colo_pmarcha_termo_elect_d, :colo_pmarcha_termo_elect_e, :colo_pmarcha_termo_elect_f, :colo_pmarcha_calde_atmos, :colo_pmarcha_calde_bajo_nox, :colo_pmarcha_calde_estanca, :techo_pintar, :techo_tipo_pintura, :techo_alisar, :techo_reparar_humedad, :pared_empapelar, :pared_quitar_papel, :pared_alisar, :pared_pintar, :pared_reparar_humedad, :carpin_friso, :puerta_colocar, :puerta_tipo, :puerta_cambio_precerco, :ventana_colocar, :ventana_tipo, :ventana_contraventana)
    end
end
