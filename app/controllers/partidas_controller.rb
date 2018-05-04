class PartidasController < ApplicationController
  before_action :set_partida, only: [:edit, :update, :destroy] #:show, 
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  # GET /partidas
  # GET /partidas.json
  def index
    @partidas = Partida.all
  end

  # GET /partidas/1
  # GET /partidas/1.json
  def show
    @partida_show = Partida.find_by_slug(params[:slug])
    @partida = Partida.new
  end

  # GET /partidas/new
  def new
    @partida = Partida.new
    if logged_in?
      if current_user.empresa == true
      else
        # si está logeado puede hacer partidas sin que este dentro de la reforma?? ya hemos visto que si pero
        if params[:reform_id] != nil
          @reform = Reform.find(params[:reform_id])
        end
      end
    else

    end
  end

  # GET /partidas/1/edit
  def edit
  end

  # POST /partidas
  # POST /partidas.json
  def create
    #@partida = Partida.new(partida_params)
    if params[:partida][:partida_id] != nil
      slug = nil
    else
      slug = params[:partida][:titulo].parameterize.truncate(80, omission: '')
    end
    #slug = params[:partida][:titulo].parameterize.truncate(80, omission: '')
    @partida = Partida.new(titulo: params[:partida][:titulo], description: params[:partida][:description], medicion: params[:partida][:medicion], comentario: params[:partida][:comentario], foto: params[:partida][:foto], categoria: params[:partida][:categoria], reform_id: params[:partida][:reform_id], habitacion_id: params[:partida][:habitacion_id], user_id: params[:partida][:user_id], um: params[:partida][:um], desc_tecnica: params[:partida][:desc_tecnica], material: params[:partida][:material], cond_previas: params[:partida][:cond_previas], fases: params[:partida][:fases], cond_terminacion: params[:partida][:cond_terminacion], man_obra: params[:partida][:man_obra], rendimiento: params[:partida][:rendimiento], mat_incluidos: params[:partida][:mat_incluidos], mat_aportar: params[:partida][:mat_aportar], importe: params[:partida][:importe], empresa: params[:partida][:empresa], nombre_invitado: params[:partida][:nombre_invitado], email_invitado: params[:partida][:email_invitado], provincia_invitado: params[:partida][:provincia_invitado], plazo_invitado: params[:partida][:plazo_invitado], partida_id: params[:partida][:partida_id], slug: slug)

    respond_to do |format|
      if logged_in? 
        if params[:partida][:partida_id] == nil
          if @partida.save
            if current_user.empresa == true
              format.html { redirect_to root_url, notice: 'La partida personalizada se ha añadido correctamente.' }
              #format.html { redirect_back(fallback_location: empresa_path(params[:partida][:empresa]), notice: 'La partida personalizada se ha añadido correctamente.') }
              format.json { render :show, status: :created, location: @partida }          
            else
              @reform = params[:partida][:reform_id]
              format.html { redirect_to reform_path(@reform), notice: 'La partida se ha creado correctamente.' }
              format.json { render :show, status: :created, location: @partida }
            end        
          else
            format.html { redirect_to root_url, notice: 'Partida no ha podido crearse correctamente, inténtalo de nuevo.' }
            format.json { render json: @partida.errors, status: :unprocessable_entity }
          end
        else
          if @partida.save
            format.html { redirect_to root_url, notice: 'Hemos solicitado la información, en breve recbirá toda la información.' }
            format.json { render :show, status: :created, location: @partida } 
          else
            format.html { redirect_to root_url, notice: 'Partida no ha podido crearse correctamente, inténtalo de nuevo.' }
            format.json { render json: @partida.errors, status: :unprocessable_entity }
          end          
        end          
      else        
        if Partida.where(email_invitado: params[:partida][:email_invitado]).any?
          format.html { redirect_back(fallback_location: root_url, notice: 'Ya has creado un proyecto asociado a este correo. No podemos gestionar varios proyectos en un mismo correo si no eres usuario, lo sentimos. Hazte usuario gratis en 2 sencillos pasos.') }
        else
          if @partida.save
            format.html { redirect_to root_url, notice: 'La partida se ha creado con éxito, en breve nos pondremos en contacto, gracias.' }
            format.json { render :show, status: :created, location: @partida } 
          else
            format.html { redirect_to root_url, notice: 'Partida no ha podido crearse correctamente, inténtalo de nuevo.' }
            format.json { render json: @partida.errors, status: :unprocessable_entity }
          end
        end
      end
    end
  end

  # PATCH/PUT /partidas/1
  # PATCH/PUT /partidas/1.json
  def update
    respond_to do |format|
      if @partida.update(partida_params)
        if params[:partida][:empresa] != nil
          format.html { redirect_to empresa_path(params[:partida][:empresa]), notice: 'La partida personalizada se ha actualizado correctamente.' }        
        else
          format.html { redirect_to reform_path(@reform), notice: 'Partida was successfully updated.' }
          format.json { render :show, status: :ok, location: @partida }
        end         

      else
        format.html { render :edit }
        format.json { render json: @partida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partidas/1
  # DELETE /partidas/1.json
  def destroy
    @partida.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_url, notice: 'La partida ha sido eliminada.') }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partida
      if params[:id] != nil
        @partida = Partida.find_by_slug(params[:slug])
      else
        @partida = Partida.find_by_slug(params[:slug])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partida_params
      params.require(:partida).permit(:titulo, :description, :medicion, :comentario, :foto, :categoria, :reform_id, :habitacion_id, :user_id, :um, :desc_tecnica, :material, :cond_previas, :fases, :cond_terminacion, :man_obra, :rendimiento, :mat_incluidos, :mat_aportar, :importe, :empresa, :nombre_invitado, :email_invitado, :provincia_invitado, :plazo_invitado, :partida_id, :slug)
    end
end
