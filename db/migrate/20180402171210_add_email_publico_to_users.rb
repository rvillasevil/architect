class AddEmailPublicoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email_publico, :string
    add_column :users, :telefono_publico, :string    
  end
end
