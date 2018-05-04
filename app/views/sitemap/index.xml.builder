# app/views/sitemap/index.xml.builder

base_url = "https://#{request.host_with_port}/"

xml.instruct! :xml, :version=>"1.0"
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9', 'xmlns:image' => 'http://www.google.com/schemas/sitemap-image/1.1', 'xmlns:video' => 'http://www.google.com/schemas/sitemap-video/1.1' do
	xml << (render :partial => 'sitemap/common', pages: @pages)
	xml << (render :partial => 'sitemap/partidas', items: @partidas)
	xml << (render :partial => 'sitemap/reforms', items: @reforms)
	#xml << (render :partial => 'sitemap/habitacions', items: @habitacions)
	xml << (render :partial => 'sitemap/presupuesto', items: @reforms)
	xml << (render :partial => 'sitemap/blog', items: @blogs)
end