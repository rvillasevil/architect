class AddH2ToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :description_segunda, :string
    add_column :blogs, :subtitle, :string
    add_column :blogs, :subtitle_segundo, :string
    add_column :blogs, :content_cuarto, :string
    add_column :blogs, :subtitle_tercero, :string
    add_column :blogs, :content_quinto, :string
    add_column :blogs, :subtitle_cuarto, :string
    add_column :blogs, :content_sexto, :string
    add_column :blogs, :subtitle_quinto, :string
    add_column :blogs, :content_septimo, :string
  end
end
