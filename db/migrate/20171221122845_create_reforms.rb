class CreateReforms < ActiveRecord::Migration[5.0]
  def change
    create_table :reforms do |t|
      t.integer :user_id
      t.string :localidad

      t.timestamps
    end
  end
end
