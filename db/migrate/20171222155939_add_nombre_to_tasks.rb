class AddNombreToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :nombre, :string
  end
end
