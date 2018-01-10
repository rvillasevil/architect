class ChangeDecimalsInBudget < ActiveRecord::Migration[5.0]
  def change
  	change_column :budgets, :cost, :decimal, precision: 10, scale: 2
  end
end
