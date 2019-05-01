require 'rails_helper'

RSpec.describe "galeri_foto/show", type: :view do
  before(:each) do
    @galeri_foto = assign(:galeri_foto, GaleriFoto.create!(
      :judul => "Judul",
      :keterangan => "Keterangan",
      :pengguna => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Judul/)
    expect(rendered).to match(/Keterangan/)
    expect(rendered).to match(//)
  end
end
