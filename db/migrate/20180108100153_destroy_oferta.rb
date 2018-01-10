class DestroyOferta < ActiveRecord::Migration[5.0]
  def change
  	drop_table :oferta
  end
end
