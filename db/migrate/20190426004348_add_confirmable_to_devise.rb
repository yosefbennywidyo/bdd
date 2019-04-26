class AddConfirmableToDevise < ActiveRecord::Migration[5.2]
  def change
  	add_column :pengguna, :confirmation_token, :string
  	add_column :pengguna, :confirmed_at, :datetime
  	add_column :pengguna, :confirmation_sent_at, :datetime
  end
end
