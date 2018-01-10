class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy]
  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all
    @empresa = Empresa.find_by(user_id: current_user.id)
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @empresa = Empresa.find(params[:id])
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to @empresa, notice: 'Empresa was successfully created.' }
        format.json { render :show, status: :created, location: @empresa }
      else
        format.html { render :new }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresas_url, notice: 'Empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:user_id, :demo_quitar_azulejo, :demo_quitar_baldosa, :demo_quitar_inodoro, :demo_quitar_bidet, :demo_quitar_plato_ducha, :demo_quitar_mampara, :demo_quitar_mueble_bano, :demo_quitar_banera, :demo_quitar_falso_techo, :demo_quitar_tabique, :demo_quitar_mobi_cocina, :demo_retir_electrodomesticos, :demo_quitar_mueble, :demo_friso_madera, :tub_termo_electrico, :tub_radiador, :tub_lavabo, :tub_ducha_banera, :tub_bidet, :tub_inodoro, :tub_colum_hidromasaje, :tub_lavabo_doble, :tub_jacuzzy, :tub_sauna, :tub_ducha_empotrada, :tub_toallero, :tub_reubicar_contador, :tub_lavadora, :tub_reubicar_inodoro, :tub_tipo, :tub_caldera, :tub_fregadero, :tub_lavavajillas, :tub_secadora, :elec_pto_luz_techo, :elec_pto_luz_pared, :elec_interr_simple, :elec_interr_doble, :elec_interr_triple, :elec_enchu_simple, :elec_enchu_doble, :elec_enchu_triple, :elec_reubicar_caja_luz, :elec_toma_lavadora, :elec_toma_ventilador_extractor, :elec_toma_horno_vitroceramica, :elec_toma_microondas, :elec_toma_frigorifico, :elec_toma_lavavajillas, :elec_toma_secadora, :elec_toma_telefono, :demo_quitar_azulejos, :demo_quitar_baldosas, :demo_falso_techo, :demo_tabique,:demo_inodoro, :demo_bidet, :demo_plato_ducha, :demo_mampara, :demo_mueble_bano, :demo_banera, :demo_mobiliario_cocina, :demo_electrodomesticos, :demo_frisos_madera, :demo_muebles, :alb_azulejo, :alb_tipo_azulejo, :alb_baldosa, :alb_tipo_baldosa, :alb_techo_pladur, :alb_tabique_ladriyeso, :alb_tabique_pladur, :alb_tabique_fabrica, :alb_tabique_paves, :alb_nivelacion_pared, :mont_sani_mampara, :mont_sani_mueble_bano, :mont_sani_banera, :mont_sani_plato_ducha, :mont_sani_bidet, :mont_sani_inodoro_normal, :mont_sani_inodoro_suspendido, :mont_sani_inodoro_encastrado, :mont_sani_grifo_ducha, :mont_sani_grifo_banera, :mont_sani_acceso_atornillado, :mont_sani_colum_hidromasaje, :mont_sani_cabina_ducha, :mont_sani_plato_ducha_obra, :mont_sani_lavabo_pedestal,:mont_electro_mueble_alto_cocina, :mont_electro_mueble_bajo_cocina, :mont_electro_horno_electrico, :mont_electro_placa_vitro, :mont_electro_placa_electrica, :mont_electro_lavadora, :mont_electro_frigorifico, :mont_electro_lavavajillas, :mont_electro_microondas, :mont_electro_secadora, :mont_fregadero, :mont_grifo_fregadero, :colo_pmarcha_termo_elect_a, :colo_pmarcha_termo_elect_b, :colo_pmarcha_termo_elect_c, :colo_pmarcha_termo_elect_d, :colo_pmarcha_termo_elect_e, :colo_pmarcha_termo_elect_f, :colo_pmarcha_calde_atmos, :colo_pmarcha_calde_bajo_nox, :colo_pmarcha_calde_estanca, :techo_pintar, :techo_tipo_pintura, :techo_alisar, :techo_reparar_humedad, :pared_empapelar, :pared_quitar_papel, :pared_alisar, :pared_pintar, :pared_reparar_humedad, :carpin_friso, :puerta_colocar, :puerta_tipo, :puerta_cambio_precerco, :ventana_colocar, :ventana_tipo, :ventana_contraventana)
    end
end


