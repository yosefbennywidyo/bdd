require 'rails_helper'

RSpec.describe "laporan_pegawai_bimkat_sumteng/index", type: :view do
  before(:each) do
    assign(:laporan_pegawai_bimkat_sumteng, [
      LaporanPegawaiBimkatSumteng.create!(
        :judul => "Judul",
        :tautan => "Tautan",
        :pengguna => nil
      ),
      LaporanPegawaiBimkatSumteng.create!(
        :judul => "Judul",
        :tautan => "Tautan",
        :pengguna => nil
      )
    ])
  end

  it "renders a list of laporan_pegawai_bimkat_sumteng" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "Tautan".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
