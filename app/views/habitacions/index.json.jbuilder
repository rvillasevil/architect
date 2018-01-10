json.array!(@habitacions) do |habitacion|
  json.extract! habitacion, :id, :nombre, :demo_quitar_azulejo
  json.url habitacion_url(habitacion, format: :json)
end
