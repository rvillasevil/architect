class DropAddslugs < ActiveRecord::Migration[5.0]
  def change
  	drop_table :add_slug_to_partidas
  end
end
