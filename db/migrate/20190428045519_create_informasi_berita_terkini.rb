class CreateInformasiBeritaTerkini < ActiveRecord::Migration[5.2]
  def change
    create_table :informasi_berita_terkini do |t|
      t.string :judul
      t.string :keterangan
      t.string :tautan
      t.references :pengguna, foreign_key: true

      t.timestamps
    end
  end
end
