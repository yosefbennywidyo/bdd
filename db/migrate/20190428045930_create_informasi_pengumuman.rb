class CreateInformasiPengumuman < ActiveRecord::Migration[5.2]
  def change
    create_table :informasi_pengumuman do |t|
      t.string :judul
      t.string :keterangan
      t.string :tautan
      t.references :pengguna, foreign_key: true

      t.timestamps
    end
  end
end
