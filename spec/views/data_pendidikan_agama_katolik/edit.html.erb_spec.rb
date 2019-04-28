require 'rails_helper'

RSpec.describe "data_pendidikan_agama_katolik/edit", type: :view do
  before(:each) do
    @data_pendidikan_agama_katolik = assign(:data_pendidikan_agama_katolik, DataPendidikanAgamaKatolik.create!(
      :judul => "MyString",
      :keterangan => "MyString",
      :pengguna => nil
    ))
  end

  it "renders the edit data_pendidikan_agama_katolik form" do
    render

    assert_select "form[action=?][method=?]", data_pendidikan_agama_katolik_path(@data_pendidikan_agama_katolik), "post" do

      assert_select "input[name=?]", "data_pendidikan_agama_katolik[judul]"

      assert_select "input[name=?]", "data_pendidikan_agama_katolik[keterangan]"

      assert_select "input[name=?]", "data_pendidikan_agama_katolik[pengguna_id]"
    end
  end
end
