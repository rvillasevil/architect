class AddProvinciaToHabitacions < ActiveRecord::Migration[5.0]
  def change
    add_column :habitacions, :provincia_invitado, :string
    add_column :habitacions, :plazo_invitado, :string
  end
end
