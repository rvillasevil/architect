class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :content
      t.string :title
      t.string :foto_primera
      t.string :foto_segunda
      t.string :foto_tercera

      t.timestamps
    end
  end
end
