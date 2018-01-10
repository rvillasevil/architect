class AddFieldsToTasks < ActiveRecord::Migration[5.0]
  def change
  	add_column :tasks, :codigo, :string
  	add_column :tasks, :importe, :decimal, precision: 7, scale: 2
  	
  	
  	add_column :tasks, :desc_tecnica, :string
  	add_column :tasks, :cond_previas, :string
  	add_column :tasks, :fases, :string
  	add_column :tasks, :cond_terminacion, :string
  	
  	add_column :tasks, :man_obra, :string
  	add_column :tasks, :rendimiento, :decimal, precision: 5, scale: 2
  	add_column :tasks, :mat_incluido, :string
  	add_column :tasks, :mat_aportar, :string

  end
end
