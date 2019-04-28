require 'rails_helper'

RSpec.describe "informasi_berita_terkini/new", type: :view do
  before(:each) do
    assign(:informasi_berita_terkini, InformasiBeritaTerkini.new(
      :judul => "MyString",
      :keterangan => "MyString",
      :tautan => "MyString",
      :pengguna => nil
    ))
  end

  it "renders new informasi_berita_terkini form" do
    render

    assert_select "form[action=?][method=?]", informasi_berita_terkini_index_path, "post" do

      assert_select "input[name=?]", "informasi_berita_terkini[judul]"

      assert_select "input[name=?]", "informasi_berita_terkini[keterangan]"

      assert_select "input[name=?]", "informasi_berita_terkini[tautan]"

      assert_select "input[name=?]", "informasi_berita_terkini[pengguna_id]"
    end
  end
end
