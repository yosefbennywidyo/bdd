require 'rails_helper'

RSpec.describe "DataKeagamaanKatolik", type: :request do
  describe "GET /data_keagamaan_katolik" do
    it "works! (now write some real specs)" do
      get data_keagamaan_katolik_index_path
      expect(response).to have_http_status(200)
    end
  end
end
