class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :hashtag]
  before_action :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to :back #root_url
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
  end

  def petition_form
    @micropost = Micropost.new
    @user = current_user
  end

  def show
    @user = current_user
    @micropost = Micropost.find(params[:id])
  end

  def petition_index
    @microposts = Micropost.where(user_id: current_user.id).where(:petition => true).paginate(page: params[:page])
    @candidates = User.find_by_sql(
      'SELECT     users.id,
      COUNT       (relationships.followed_id)
      AS          numbersOfFollowers
      FROM        relationships
      LEFT JOIN   users
      ON          relationships.followed_id = users.id
      GROUP BY    users.id  
      ORDER BY  count(followed_id) 
      DESC
      ')
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture, :video, :hashtag1, :hashtag2,:hashtag3, :link, :plaza_id, :id, :petition, :title)
    end
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end