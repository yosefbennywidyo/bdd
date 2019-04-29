require 'rails_helper'

RSpec.describe "laporan_penyuluh_agama_katolik/edit", type: :view do
  before(:each) do
    @laporan_penyuluh_agama_katolik = assign(:laporan_penyuluh_agama_katolik, LaporanPenyuluhAgamaKatolik.create!(
      :judul => "MyString",
      :tautan => "MyString",
      :pengguna => nil
    ))
  end

  it "renders the edit laporan_penyuluh_agama_katolik form" do
    render

    assert_select "form[action=?][method=?]", laporan_penyuluh_agama_katolik_path(@laporan_penyuluh_agama_katolik), "post" do

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[judul]"

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[tautan]"

      assert_select "input[name=?]", "laporan_penyuluh_agama_katolik[pengguna_id]"
    end
  end
end
