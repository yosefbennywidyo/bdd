class CreateLaporanGuruAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    create_table :laporan_guru_agama_katolik do |t|
      t.string :judul
      t.string :tautan
      t.references :pengguna, foreign_key: true

      t.timestamps
    end
  end
end
