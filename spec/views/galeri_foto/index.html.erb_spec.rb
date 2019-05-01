require 'rails_helper'

RSpec.describe "galeri_foto/index", type: :view do
  before(:each) do
    assign(:galeri_foto, [
      GaleriFoto.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :pengguna => nil
      ),
      GaleriFoto.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :pengguna => nil
      )
    ])
  end

  it "renders a list of galeri_foto" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "Keterangan".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
