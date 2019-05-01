class AddTautanToGaleriVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :galeri_video, :tautan, :string
  end
end
