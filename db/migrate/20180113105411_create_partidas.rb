class CreatePartidas < ActiveRecord::Migration[5.0]
  def change
    create_table :partidas do |t|
      t.string :titulo
      t.string :description
      t.decimal :medicion, precision: 7, scale: 2      
      t.string :comentario
      t.string :foto
      t.string :categoria
      t.integer :reform_id
      t.integer :habitacion_id

      t.timestamps
    end
  end
end
