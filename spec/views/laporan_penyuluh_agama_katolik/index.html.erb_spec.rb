require 'rails_helper'

RSpec.describe "laporan_penyuluh_agama_katolik/index", type: :view do
  before(:each) do
    assign(:laporan_penyuluh_agama_katolik, [
      LaporanPenyuluhAgamaKatolik.create!(
        :judul => "Judul",
        :tautan => "Tautan",
        :pengguna => nil
      ),
      LaporanPenyuluhAgamaKatolik.create!(
        :judul => "Judul",
        :tautan => "Tautan",
        :pengguna => nil
      )
    ])
  end

  it "renders a list of laporan_penyuluh_agama_katolik" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "Tautan".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
