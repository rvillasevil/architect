class ChangeValoracionTypeToMicroposts < ActiveRecord::Migration[5.0]
  def change
  	change_column :microposts, :valoracion, :string
  end
end
