class PartidasController < ApplicationController
  before_action :set_partida, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  # GET /partidas
  # GET /partidas.json
  def index
    @partidas = Partida.all
  end

  # GET /partidas/1
  # GET /partidas/1.json
  def show
  end

  # GET /partidas/new
  def new
    @partida = Partida.new
    if logged_in?
      if current_user.empresa == true
      else
        @reform = Reform.find(params[:reform_id])
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
    @partida = Partida.new(partida_params)

    respond_to do |format|

      if logged_in? 

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
        @partida = Partida.find(params[:id])
      else
        @partida = Partida.find_by(titulo: params[:titulo])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partida_params
      params.require(:partida).permit(:titulo, :description, :medicion, :comentario, :foto, :categoria, :reform_id, :habitacion_id, :user_id, :um, :desc_tecnica, :material, :cond_previas, :fases, :cond_terminacion, :man_obra, :rendimiento, :mat_incluidos, :mat_aportar, :importe, :empresa, :nombre_invitado, :email_invitado, :provincia_invitado, :plazo_invitado)
    end
end
