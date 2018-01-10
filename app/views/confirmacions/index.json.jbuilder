json.array!(@confirmacions) do |confirmacion|
  json.extract! confirmacion, :id, :user_id, :reform_id, :usuario, :empresa
  json.url confirmacion_url(confirmacion, format: :json)
end
