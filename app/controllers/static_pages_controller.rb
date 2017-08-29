class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @listado = current_user.ciudad
      @users = User.where(:ciudad => @listado).paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
  end

  def contact
  end
end
