class AddGoogleRefreshTokenToPengguna < ActiveRecord::Migration[5.2]
  def change
    add_column :pengguna, :google_refresh_token, :string
  end
end
