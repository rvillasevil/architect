json.array!(@cocinas) do |cocina|
  json.extract! cocina, :id, :nombre, :demo_quitar_azulejo
  json.url cocina_url(cocina, format: :json)
end
