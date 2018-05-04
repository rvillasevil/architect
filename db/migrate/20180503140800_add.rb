class Add < ActiveRecord::Migration[5.0]
  def change
  	add_column :blogs, :content_segundo, :string
  	add_column :blogs, :content_tercero, :string
  end
end
