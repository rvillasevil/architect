base_url = "https://#{request.host_with_port}"

@reforms.each do |reform|
  xml.url do
    xml.loc base_url+"/reforma/presupuesto/#{reform.id}"
  end

end