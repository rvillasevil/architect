class CreateAddSlugToPartidas < ActiveRecord::Migration[5.0]
  def change
    create_table :add_slug_to_partidas do |t|
      t.string :slug

      t.timestamps
    end
  end
end
