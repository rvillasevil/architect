json.array!(@contactos) do |contacto|
  json.extract! contacto, :id, :email, :tipo, :comentario
  json.url contacto_url(contacto, format: :json)
end
