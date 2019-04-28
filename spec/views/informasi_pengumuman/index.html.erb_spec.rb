require 'rails_helper'

RSpec.describe "informasi_pengumuman/index", type: :view do
  before(:each) do
    assign(:informasi_pengumuman, [
      InformasiPengumuman.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :tautan => "Tautan",
        :pengguna => nil
      ),
      InformasiPengumuman.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :tautan => "Tautan",
        :pengguna => nil
      )
    ])
  end

  it "renders a list of informasi_pengumuman" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "Keterangan".to_s, :count => 2
    assert_select "tr>td", :text => "Tautan".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
