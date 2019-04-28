class AddTautanToDataPendidikanAgamaKatolik < ActiveRecord::Migration[5.2]
  def change
    add_column :data_pendidikan_agama_katolik, :tautan, :string
  end
end
