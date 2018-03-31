class AddEmailInvitadoToHabitacions < ActiveRecord::Migration[5.0]
  def change
    add_column :habitacions, :email_invitado, :string
  end
end
