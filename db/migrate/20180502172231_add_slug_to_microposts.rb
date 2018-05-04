class AddSlugToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :slug, :string
  end
end
