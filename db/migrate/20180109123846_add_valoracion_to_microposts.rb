class AddValoracionToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :valoracion, :integer
  end
end
