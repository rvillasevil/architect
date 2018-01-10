class AddReformIdToCocinas < ActiveRecord::Migration[5.0]
  def change
    add_column :cocinas, :reform_id, :integer
  end
end
