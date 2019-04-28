require 'rails_helper'

RSpec.describe "DataPendidikanAgamaKatolik", type: :request do
  describe "GET /data_pendidikan_agama_katolik" do
    it "works! (now write some real specs)" do
      get data_pendidikan_agama_katolik_index_path
      expect(response).to have_http_status(200)
    end
  end
end
