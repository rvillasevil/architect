class CreateAzulejos < ActiveRecord::Migration[5.0]
  def change
    create_table :azulejos do |t|
      t.string :description
      t.string :name
      t.string :medidas
      t.decimal :precio
      t.string :unidad
      t.string :aspecto

      t.timestamps
    end
  end
end
