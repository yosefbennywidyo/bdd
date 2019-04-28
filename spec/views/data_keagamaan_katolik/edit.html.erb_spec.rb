require 'rails_helper'

RSpec.describe "data_keagamaan_katolik/edit", type: :view do
  before(:each) do
    @data_keagamaan_katolik = assign(:data_keagamaan_katolik, DataKeagamaanKatolik.create!(
      :judul => "MyString",
      :keterangan => "MyString",
      :pengguna => nil
    ))
  end

  it "renders the edit data_keagamaan_katolik form" do
    render

    assert_select "form[action=?][method=?]", data_keagamaan_katolik_path(@data_keagamaan_katolik), "post" do

      assert_select "input[name=?]", "data_keagamaan_katolik[judul]"

      assert_select "input[name=?]", "data_keagamaan_katolik[keterangan]"

      assert_select "input[name=?]", "data_keagamaan_katolik[pengguna_id]"
    end
  end
end
