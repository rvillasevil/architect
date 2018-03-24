base_url = "https://#{request.host_with_port}"

@habitacions.each do |habitacion|
  xml.url do
    xml.loc base_url+habitacion_path(habitacion)
  end

end