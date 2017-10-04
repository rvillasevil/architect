class PlazasController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :index, :show, :new]
  before_action :correct_user,   only: :destroy

   def create
   	@user = current_user
    @plaza = @user.plazas.build(plaza_params)
    if @plaza.save
      flash[:success] = "Plaza created!"
      redirect_to user_plazas_path(@user) #root_url
    else
      render :back
    end
  end

  def new
  	@plaza = Plaza.new
  end

  def index
  	@plazas = current_user.plazas.paginate(page: params[:page])
  end

  def destroy
    @plaza.destroy
    flash[:success] = "Plaza deleted"
    redirect_to current_user.plaza
  end


  def show
    @user = User.find(params[:user_id])
    @plaza = Plaza.find(params[:id])
    @microposts = Micropost.where(:plaza_id == @plaza.id).paginate(page: params[:page])
    @micropost  = current_user.microposts.build
    @group = current_user.groups.build
    @seguidores = Group.where(:plaza_id => @plaza.id)
    #@seguidor para determinar el número de seguidores y su link a una página donde estén todos será necesario escribir el código en sql para acceder a ellos.
  end

  private

    def plaza_params
      params.require(:plaza).permit(:name, :ciudad, :foto, :user_id)
    end
    def correct_user
      @plaza = current_user.plazas.find_by(id: params[:id])
      redirect_to root_url if @plaza.nil?
    end

end
