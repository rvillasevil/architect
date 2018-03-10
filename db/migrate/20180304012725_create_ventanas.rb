class CreateVentanas < ActiveRecord::Migration[5.0]
  def change
    create_table :ventanas do |t|
      t.string :name
      t.string :description
      t.string :material
      t.string :medidas
      t.decimal :precio

      t.timestamps
    end
  end
end
