require 'rails_helper'

RSpec.describe "InformasiBeritaTerkini", type: :request do
  describe "GET /informasi_berita_terkini" do
    it "works! (now write some real specs)" do
      get informasi_berita_terkini_index_path
      expect(response).to have_http_status(200)
    end
  end
end
