class ConfirmacionsController < ApplicationController
  before_action :set_confirmacion, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :show, :new, :edit, :create, :new, :update, :destroy ]

  # GET /confirmacions
  # GET /confirmacions.json
  def index
    @confirmacions = Confirmacion.all
  end

  # GET /confirmacions/1
  # GET /confirmacions/1.json
  def show
  end

  # GET /confirmacions/new
  def new
    @confirmacion = Confirmacion.new
  end

  # GET /confirmacions/1/edit
  def edit
  end

  # POST /confirmacions
  # POST /confirmacions.json
  def create
    @confirmacion = Confirmacion.new(confirmacion_params)

    respond_to do |format|
      if @confirmacion.save
        if current_user.empresa == true
          format.html { redirect_to presupuestos_path, notice: 'Confirmacion was successfully created.' }
          format.json { render :show, status: :created, location: @confirmacion }
        else
          format.html { redirect_to reforms_path, notice: 'Confirmacion was successfully created.' }
          format.json { render :show, status: :created, location: @confirmacion }
        end
      else
        format.html { render :new }
        format.json { render json: @confirmacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confirmacions/1
  # PATCH/PUT /confirmacions/1.json
  def update
    respond_to do |format|
      if @confirmacion.update(confirmacion_params)
        format.html { redirect_to presupuestos_path, notice: 'Confirmacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @confirmacion }
      else
        format.html { render :edit }
        format.json { render json: @confirmacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmacions/1
  # DELETE /confirmacions/1.json
  def destroy
    @confirmacion.destroy
    respond_to do |format|
      format.html { redirect_to confirmacions_url, notice: 'Confirmacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confirmacion
      @confirmacion = Confirmacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confirmacion_params
      params.require(:confirmacion).permit(:user_id, :reform_id, :usuario, :empresa, :cost)
    end
end
