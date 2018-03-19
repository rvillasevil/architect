class BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :show, :new, :edit, :create, :new, :update, :destroy]

  # GET /budgets
  # GET /budgets.json
  def index
    @budgets = Budget.all
  end

  # GET /budgets/1
  # GET /budgets/1.json
  def show
  end

  # GET /budgets/new
  def new
    @budget = Budget.new
  end

  # GET /budgets/1/edit
  def edit
  end

  # POST /budgets
  # POST /budgets.json
  def create
    @budget = Budget.new(budget_params)
    respond_to do |format|
      if @budget.save
        if current_user.empresa == true
        format.html { redirect_to presupuestos_path, notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @budget }
        else
        format.html { redirect_back(fallback_location: root_path, notice: 'El presupuesto no ha podido crearse, intentalo de nuevo.') }
        format.json { render :show, status: :created, location: @budget }          
        end
      else
        format.html { render :new }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budgets/1
  # PATCH/PUT /budgets/1.json
  def update
    respond_to do |format|
      if @budget.update(budget_params)
        if current_user.empresa == true
        format.html { redirect_to presupuestos_path, notice: 'Budget was successfully updated.' }
        format.json { render :show, status: :created, location: @budget }
        else
        format.html { redirect_back(fallback_location: root_path, notice: 'Budget was successfully updated.') }
        format.json { render :show, status: :created, location: @budget }          
        end
      else
        format.html { render :edit }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budgets/1
  # DELETE /budgets/1.json
  def destroy
    @budget.destroy
    respond_to do |format|
      format.html { redirect_to budgets_url, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = Budget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_params
      params.require(:budget).permit(:user_id, :reform_id, :cost, :habitacion_id, :partida_id)
    end
end
