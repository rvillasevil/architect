class CreatePuerta < ActiveRecord::Migration[5.0]
  def change
    create_table :puerta do |t|
      t.string :name
      t.string :description
      t.string :material
      t.string :medidas
      t.decimal :precio

      t.timestamps
    end
  end
end
