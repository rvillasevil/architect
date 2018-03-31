class AddInvitadoToPartidas < ActiveRecord::Migration[5.0]
  def change
    add_column :partidas, :nombre_invitado, :string
    add_column :partidas, :email_invitado, :string
    add_column :partidas, :provincia_invitado, :string
    add_column :partidas, :plazo_invitado, :string
  end
end
