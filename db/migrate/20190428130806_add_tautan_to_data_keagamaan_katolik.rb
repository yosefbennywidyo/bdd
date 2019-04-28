class AddTautanToDataKeagamaanKatolik < ActiveRecord::Migration[5.2]
  def change
    add_column :data_keagamaan_katolik, :tautan, :string
  end
end
