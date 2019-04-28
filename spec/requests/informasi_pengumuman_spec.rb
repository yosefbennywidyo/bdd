require 'rails_helper'

RSpec.describe "InformasiPengumuman", type: :request do
  describe "GET /informasi_pengumuman" do
    it "works! (now write some real specs)" do
      get informasi_pengumuman_index_path
      expect(response).to have_http_status(200)
    end
  end
end
