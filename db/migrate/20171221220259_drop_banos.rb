class DropBanos < ActiveRecord::Migration[5.0]
	  def change
    drop_table :banos
  	end
end
