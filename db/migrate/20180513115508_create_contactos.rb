class CreateContactos < ActiveRecord::Migration[5.0]
  def change
    create_table :contactos do |t|
      t.string :email
      t.string :tipo
      t.string :comentario

      t.timestamps
    end
  end
end
