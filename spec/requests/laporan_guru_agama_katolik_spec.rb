require 'rails_helper'

RSpec.describe "LaporanGuruAgamaKatolik", type: :request do
  describe "GET /laporan_guru_agama_katolik" do
    it "works! (now write some real specs)" do
      get laporan_guru_agama_katolik_index_path
      expect(response).to have_http_status(200)
    end
  end
end
