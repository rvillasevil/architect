json.array!(@presupuestos) do |presupuesto|
  json.extract! presupuesto, :id, :user_id, :reform_id, :habitacion_id
  json.url presupuesto_url(presupuesto, format: :json)
end
