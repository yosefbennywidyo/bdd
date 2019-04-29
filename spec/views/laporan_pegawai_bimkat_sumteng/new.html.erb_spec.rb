require 'rails_helper'

RSpec.describe "laporan_pegawai_bimkat_sumteng/new", type: :view do
  before(:each) do
    assign(:laporan_pegawai_bimkat_sumteng, LaporanPegawaiBimkatSumteng.new(
      :judul => "MyString",
      :tautan => "MyString",
      :pengguna => nil
    ))
  end

  it "renders new laporan_pegawai_bimkat_sumteng form" do
    render

    assert_select "form[action=?][method=?]", laporan_pegawai_bimkat_sumteng_index_path, "post" do

      assert_select "input[name=?]", "laporan_pegawai_bimkat_sumteng[judul]"

      assert_select "input[name=?]", "laporan_pegawai_bimkat_sumteng[tautan]"

      assert_select "input[name=?]", "laporan_pegawai_bimkat_sumteng[pengguna_id]"
    end
  end
end
