class AddGoogleTokenToPengguna < ActiveRecord::Migration[5.2]
  def change
    add_column :pengguna, :google_token, :string
  end
end
