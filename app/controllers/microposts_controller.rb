class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :hashtag]
  before_action :correct_user,   only: :destroy

  require 'open-uri'
  require 'will_paginate/array'  


  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_back(fallback_location: root_url)
    else
      flash[:danger] = "Ha ocurrido un error. El contenido no puede estar vacío. En una consulta, el título y una imagen son necesarias."
      @feed_items = []
      redirect_to :back
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end

  def hashtag
    @micropost  = current_user.microposts.build(:hashtag1 => params[:id])
    @microposts = Micropost.where(:hashtag1 => params[:id]).paginate(page: params[:page])
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
    @petitions = current_user.feed_petition
    @petitions_public = current_user.petitions_public
    @petitions_all = current_user.petitions_all
    @candidates = User.find_by_sql(
      'SELECT     users.id,
      COUNT       (relationships.followed_id)
      AS          numbersOfFollowers
      FROM        relationships
      LEFT JOIN   users
      ON          relationships.followed_id = users.id
      GROUP BY    users.id  
      ORDER BY    count(followed_id) 
      DESC
      ')
    @microposts = Micropost.where(petition: true).paginate(page: params[:page])
    @post_ordenados = Micropost.find_by_sql(
      'SELECT     microposts.id,
      COUNT       (votes.micropost_id)
      AS          numbersOfVotes
      FROM        votes
      LEFT JOIN   microposts
      ON          votes.micropost_id = microposts.id
      GROUP BY    microposts.id
      ORDER BY    count(votes.micropost_id) 
      DESC
      ')
    @popular_petitions = Micropost.where(id: @post_ordenados).where(petition: true)
    @petitions_masvotadas = Micropost.find_by_sql(
      'SELECT     microposts.id,
      COUNT       (votes.micropost_id)
      AS          numbersOfVotes
      FROM        votes
      LEFT JOIN   microposts
      ON          votes.micropost_id = microposts.id
      WHERE       microposts.petition = true
      GROUP BY    microposts.id
      ORDER BY    count(votes.micropost_id) 
      DESC
      ')
  end

  def petition_index_public
    @petitions_all = Micropost.where(petition: true).paginate(page: params[:page], per_page: 10)
    @petitions = current_user.feed_petition.paginate(page: params[:page], per_page: 10)
    @petitions_public = current_user.petitions_public.paginate(page: params[:page], per_page: 10)
  end    

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture, :video, :hashtag1, :hashtag2,:hashtag3, :link, :plaza_id, :id, :petition, :title, :title_link, :photo_link, :valoracion, :user_valorado, :user_id)
    end
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end