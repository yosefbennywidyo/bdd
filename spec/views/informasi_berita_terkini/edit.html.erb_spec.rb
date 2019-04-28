require 'rails_helper'

RSpec.describe "informasi_berita_terkini/edit", type: :view do
  before(:each) do
    @informasi_berita_terkini = assign(:informasi_berita_terkini, InformasiBeritaTerkini.create!(
      :judul => "MyString",
      :keterangan => "MyString",
      :tautan => "MyString",
      :pengguna => nil
    ))
  end

  it "renders the edit informasi_berita_terkini form" do
    render

    assert_select "form[action=?][method=?]", informasi_berita_terkini_path(@informasi_berita_terkini), "post" do

      assert_select "input[name=?]", "informasi_berita_terkini[judul]"

      assert_select "input[name=?]", "informasi_berita_terkini[keterangan]"

      assert_select "input[name=?]", "informasi_berita_terkini[tautan]"

      assert_select "input[name=?]", "informasi_berita_terkini[pengguna_id]"
    end
  end
end
