class AddNombreToReforms < ActiveRecord::Migration[5.0]
  def change
    add_column :reforms, :nombre, :string
  end
end
