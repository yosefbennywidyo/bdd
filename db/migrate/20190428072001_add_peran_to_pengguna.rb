class AddPeranToPengguna < ActiveRecord::Migration[5.2]
  def change
    add_column :pengguna, :peran, :integer
  end
end
