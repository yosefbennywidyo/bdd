require 'rails_helper'

RSpec.describe "data_keagamaan_katolik/show", type: :view do
  before(:each) do
    @data_keagamaan_katolik = assign(:data_keagamaan_katolik, DataKeagamaanKatolik.create!(
      :judul => "Judul",
      :keterangan => "Keterangan",
      :pengguna => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Judul/)
    expect(rendered).to match(/Keterangan/)
    expect(rendered).to match(//)
  end
end
