require 'rails_helper'

RSpec.describe "laporan_guru_agama_katolik/show", type: :view do
  before(:each) do
    @laporan_guru_agama_katolik = assign(:laporan_guru_agama_katolik, LaporanGuruAgamaKatolik.create!(
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
