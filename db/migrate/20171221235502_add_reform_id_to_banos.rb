class AddReformIdToBanos < ActiveRecord::Migration[5.0]
  def change
    add_column :banos, :reform_id, :integer
  end
end
