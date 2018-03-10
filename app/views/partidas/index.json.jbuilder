json.array!(@partidas) do |partida|
  json.extract! partida, :id, :titulo, :description, :medicion, :comentario, :foto, :categoria, :reform_id, :habitacion_id
  json.url partida_url(partida, format: :json)
end
