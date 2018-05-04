class AddHashtagToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :hashtag, :string
    add_column :blogs, :hashtag_segundo, :string
    add_column :blogs, :hashtag_tercero, :string
  end
end
