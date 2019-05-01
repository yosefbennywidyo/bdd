require 'rails_helper'

RSpec.describe "GaleriVideo", type: :request do
  describe "GET /galeri_video" do
    it "works! (now write some real specs)" do
      get galeri_video_index_path
      expect(response).to have_http_status(200)
    end
  end
end
