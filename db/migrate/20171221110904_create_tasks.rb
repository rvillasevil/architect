class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :subid
      t.string :um
      t.string :task
      t.string :description
      t.string :material

      t.timestamps
    end
  end
end
