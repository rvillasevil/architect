class AddSlugToPartidas < ActiveRecord::Migration[5.0]
  def change
    add_column :partidas, :slug, :string
  end
end
