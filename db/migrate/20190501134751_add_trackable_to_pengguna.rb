class AddTrackableToPengguna < ActiveRecord::Migration[5.2]
  def change
  	add_column :pengguna, :sign_in_count, :integer, default: 0, null: false
  	add_column :pengguna, :current_sign_in_at, :datetime
  	add_column :pengguna, :last_sign_in_at, :datetime
  	add_column :pengguna, :current_sign_in_ip, :inet
  	add_column :pengguna, :last_sign_in_ip, :inet
  end
end
