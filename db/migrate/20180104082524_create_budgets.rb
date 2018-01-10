class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.integer :reform_id
      t.decimal :cost, precision: 7, scale: 2

      t.timestamps
    end
  end
end
