class PlazasController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :index, :show, :new]
  before_action :correct_user,   only: :destroy

   def create
   	@user = current_user
    @plaza = @user.plazas.build(plaza_params)
    if @plaza.save
      
      flash[:success] = "Plaza created!"
      redirect_to  root_url
    else
      render :back
    end
  end

  def new
  	@plaza = Plaza.new
  end

  def index
    @user = User.find(params[:user_id])
    #Plazas seguidas por el usuario
    plaza_ids = "SELECT plaza_id FROM groups
                  WHERE  user_id = :user_id"
    # Select the post where user_id
    @plazas = Plaza.where("id IN (#{plaza_ids})       
                          OR user_id = :user_id", user_id: @user).paginate(page: params[:page], :per_page => 10)
  end

  def all_index
    @plazas = Plaza.all.paginate(page: params[:page])
    @plazas = if params[:tern]
      Plaza.where('name @@ :t or description @@ :t', t: params[:tern]).order('created_at DESC').paginate(page: params[:page])
    else
      Plaza.all.paginate(page: params[:page])
    end
  end

  def destroy
    @plaza.destroy
    flash[:success] = "Plaza deleted"
    redirect_to current_user.plaza
  end


  def show
    @user = User.find(params[:user_id])
    @plaza = Plaza.find(params[:id])
    @microposts = Micropost.where(:plaza_id => @plaza.id).paginate(page: params[:page])
    @peticiones = Micropost.where(:plaza_id => @plaza.id).where(:petition => true)
    @votos = Vote.where(:micropost_id => @microposts).where(:like == 1)
    @micropost  = current_user.microposts.build
    @group = current_user.groups.build
    @grupo_seguidores = Group.where(:plaza_id => @plaza.id)
    @grupo_seguidores.each do |seguidor|
      @seguidor = User.where(id: seguidor.user_id)
      @seguidor.each do |voter|
        @votos_seguidores = @votos.where(user_id: voter)
      end
    end
  end

  private

    def plaza_params
      params.require(:plaza).permit(:name, :ciudad, :foto, :user_id, :description)
    end
    def correct_user
      @plaza = current_user.plazas.find_by(id: params[:id])
      redirect_to root_url if @plaza.nil?
    end

end
