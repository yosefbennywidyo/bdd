class AddTautanToGaleriFoto < ActiveRecord::Migration[5.2]
  def change
    add_column :galeri_foto, :tautan, :string
  end
end
