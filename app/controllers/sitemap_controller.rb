class SitemapController < ApplicationController

  def index

  	@pages = ['', 'about.html', 'contact.html', 'vision.html', 'objetivos.html']

    respond_to do |format|
      format.xml
    end
  end

end
