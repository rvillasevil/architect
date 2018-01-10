json.array!(@budgets) do |budget|
  json.extract! budget, :id, :user_id, :reform_id, :cost
  json.url budget_url(budget, format: :json)
end
