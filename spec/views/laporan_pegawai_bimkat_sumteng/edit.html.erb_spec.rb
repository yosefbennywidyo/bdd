require 'rails_helper'

RSpec.describe "laporan_pegawai_bimkat_sumteng/edit", type: :view do
  before(:each) do
    @laporan_pegawai_bimkat_sumteng = assign(:laporan_pegawai_bimkat_sumteng, LaporanPegawaiBimkatSumteng.create!(
      :judul => "MyString",
      :tautan => "MyString",
      :pengguna => nil
    ))
  end

  it "renders the edit laporan_pegawai_bimkat_sumteng form" do
    render

    assert_select "form[action=?][method=?]", laporan_pegawai_bimkat_sumteng_path(@laporan_pegawai_bimkat_sumteng), "post" do

      assert_select "input[name=?]", "laporan_pegawai_bimkat_sumteng[judul]"

      assert_select "input[name=?]", "laporan_pegawai_bimkat_sumteng[tautan]"

      assert_select "input[name=?]", "laporan_pegawai_bimkat_sumteng[pengguna_id]"
    end
  end
end
