class SitemapController < ApplicationController

  def index

  	@pages = ['', 'about.html', 'contact.html', 'vision.html', 'objetivos.html', 'reforma.html']

  	@habitacions = Habitacion.all
  	@reforms = Reform.all
  	@partidas = Partida.where.not(empresa: nil)

    respond_to do |format|
      format.xml
    end
  end

end
