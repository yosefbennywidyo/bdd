require 'rails_helper'

RSpec.describe "GaleriFoto", type: :request do
  describe "GET /galeri_foto" do
    it "works! (now write some real specs)" do
      get galeri_foto_index_path
      expect(response).to have_http_status(200)
    end
  end
end
