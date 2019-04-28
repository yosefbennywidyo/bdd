class AddNamaLengkapToPengguna < ActiveRecord::Migration[5.2]
  def change
    add_column :pengguna, :nama_lengkap, :string
  end
end
