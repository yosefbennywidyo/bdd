require 'rails_helper'

RSpec.describe "laporan_pegawai_bimkat_sumteng/show", type: :view do
  before(:each) do
    @laporan_pegawai_bimkat_sumteng = assign(:laporan_pegawai_bimkat_sumteng, LaporanPegawaiBimkatSumteng.create!(
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
