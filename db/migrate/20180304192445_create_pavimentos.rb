class CreatePavimentos < ActiveRecord::Migration[5.0]
  def change
    create_table :pavimentos do |t|
      t.string :description
      t.string :name
      t.string :int_ext
      t.string :medidas
      t.string :acabado
      t.string :resbaladicidad
      t.string :trafico
      t.string :rayadura
      t.decimal :precio
      t.string :unidad

      t.timestamps
    end
  end
end
