class CreateGaleriFoto < ActiveRecord::Migration[5.2]
  def change
    create_table :galeri_foto do |t|
      t.string :judul
      t.string :keterangan
      t.references :pengguna, foreign_key: true

      t.timestamps
    end
  end
end
