base_url = "https://#{request.host_with_port}"

@partidas.each do |partida|
  xml.url do
    xml.loc base_url+partida_path(partida)+" Oferta en "+partida.titulo
  end

end