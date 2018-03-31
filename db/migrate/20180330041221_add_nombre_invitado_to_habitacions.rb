class AddNombreInvitadoToHabitacions < ActiveRecord::Migration[5.0]
  def change
    add_column :habitacions, :nombre_invitado, :string
  end
end
