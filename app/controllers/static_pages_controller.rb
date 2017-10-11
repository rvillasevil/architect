class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 10)
      @petitions = Micropost.where(petition: true)
    end
  end

  def popular
    @microposts = Micropost.find_by_sql(
      'SELECT     microposts.id,
      COUNT       (votes.micropost_id)
      AS          numbersOfVotes
      FROM        votes
      LEFT JOIN   microposts
      ON          votes.micropost_id = microposts.id
      GROUP BY    microposts.id
      ORDER BY    count(micropost_id) 
      DESC
      ')
    if logged_in?
      @micropost = current_user.microposts.build
    end
  end

  def help
  end
  
  def about
  end

  def contact
  end
end
