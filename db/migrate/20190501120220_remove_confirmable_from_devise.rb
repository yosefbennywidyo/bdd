class RemoveConfirmableFromDevise < ActiveRecord::Migration[5.2]
  def change
  	remove_columns :pengguna, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
