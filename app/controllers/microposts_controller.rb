class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :hashtag]
  before_action :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end

  def hashtag

    @micropost = Micropost.find(params[:id])

    @microposts = Micropost.where(:hashtag1 => @micropost.hashtag1).paginate(page: params[:page])


    #@user = User.find(params[:id])
    #redirect_to root_url and return unless @user.activated?
    #@microposts = @user.microposts.paginate(page: params[:page])
    #@users = User.where(:ciudad => @listado).paginate(page: params[:page])

  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture, :video, :hashtag1, :hashtag2,:hashtag3)
    end
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end