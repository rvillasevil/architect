json.array!(@banos) do |bano|
  json.extract! bano, :id, :nombre, :demo_quitar_azulejo
  json.url bano_url(bano, format: :json)
end
