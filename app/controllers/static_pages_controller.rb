class StaticPagesController < ApplicationController

require 'open-uri'
require 'will_paginate/array'

  def home
    @reforms = Reform.all

    @partidas = if params[:tern]
      Partida.where('titulo @@ :t or description @@ :t or desc_tecnica @@ :t or material @@ :t', t: params[:tern]).where.not(empresa: nil).order('created_at DESC')
    else
      Partida.all.where.not(empresa: nil)
    end    

    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 10)
      if current_user.empresa == true
        redirect_to '/marketplace'
      end

    else
      @user = User.new
      @partida = Partida.new
      @contacto = Contacto.new
      @posts_masvotados = Micropost.find_by_sql(
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

    end
  end

  def popular
    @posts_masvotados = Micropost.find_by_sql(
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
    @popular_petitions = Micropost.where(id: @post_ordenados).where(petition: true)
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
    if logged_in?
      @micropost = current_user.microposts.build
    end
  end

  def popular_last_day
    @posts_masvotados = Micropost.find_by_sql(
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

  def jefazo
    if logged_in?
      if current_user.admin?
        @partidas = Partida.all.where.not(partida_id: nil)
        @habitacion_invitados = Habitacion.where.not(email_invitado: nil)
        @confirmaciones = Confirmacion.where.not(empresa: true)
        @users = User.all
      else
        redirect_to root_url, notice: "no tienes los privilegios para acceder a esta página"
      end
    else
      redirect_to root_url, notice: "No tienes los priviliegios de acceder a esta página"
    end
  end

  def ux_arquitectos
  end

  def comunidad
    @preguntas = Micropost.all.where.not(user_valorado: nil)
  end
end
