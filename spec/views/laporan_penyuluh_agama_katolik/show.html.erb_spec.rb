require 'rails_helper'

RSpec.describe "laporan_penyuluh_agama_katolik/show", type: :view do
  before(:each) do
    @laporan_penyuluh_agama_katolik = assign(:laporan_penyuluh_agama_katolik, LaporanPenyuluhAgamaKatolik.create!(
      :judul => "Judul",
      :tautan => "Tautan",
      :pengguna => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Judul/)
    expect(rendered).to match(/Tautan/)
    expect(rendered).to match(//)
  end
end
