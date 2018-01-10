class AddUserIdToCocinas < ActiveRecord::Migration[5.0]
  def change
    add_column :cocinas, :user_id, :integer
  end
end
