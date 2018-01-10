json.array!(@reforms) do |reform|
  json.extract! reform, :id, :user_id, :localidad
  json.url reform_url(reform, format: :json)
end
