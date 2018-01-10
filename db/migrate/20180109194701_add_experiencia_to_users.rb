class AddExperienciaToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :experiencia, :string

    add_column :users, :servicio1, :string
    add_column :users, :servicio2, :string
    add_column :users, :servicio3, :string
    add_column :users, :servicio4, :string
    add_column :users, :servicio5, :string
    add_column :users, :servicio6, :string
    add_column :users, :servicio7, :string
    add_column :users, :servicio8, :string
    add_column :users, :servicio9, :string
    add_column :users, :servicio10, :string
  end
end
