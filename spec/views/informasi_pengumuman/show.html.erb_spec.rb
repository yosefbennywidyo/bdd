require 'rails_helper'

RSpec.describe "informasi_pengumuman/show", type: :view do
  before(:each) do
    @informasi_pengumuman = assign(:informasi_pengumuman, InformasiPengumuman.create!(
      :judul => "Judul",
      :keterangan => "Keterangan",
      :tautan => "Tautan",
      :pengguna => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Judul/)
    expect(rendered).to match(/Keterangan/)
    expect(rendered).to match(/Tautan/)
    expect(rendered).to match(//)
  end
end
