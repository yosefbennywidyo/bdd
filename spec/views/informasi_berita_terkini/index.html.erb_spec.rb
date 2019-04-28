require 'rails_helper'

RSpec.describe "informasi_berita_terkini/index", type: :view do
  before(:each) do
    assign(:informasi_berita_terkini, [
      InformasiBeritaTerkini.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :tautan => "Tautan",
        :pengguna => nil
      ),
      InformasiBeritaTerkini.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :tautan => "Tautan",
        :pengguna => nil
      )
    ])
  end

  it "renders a list of informasi_berita_terkini" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "Keterangan".to_s, :count => 2
    assert_select "tr>td", :text => "Tautan".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
