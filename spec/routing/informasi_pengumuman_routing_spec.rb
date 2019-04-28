require "rails_helper"

RSpec.describe InformasiPengumumanController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/informasi_pengumuman").to route_to("informasi_pengumuman#index")
    end

    it "routes to #new" do
      expect(:get => "/informasi_pengumuman/new").to route_to("informasi_pengumuman#new")
    end

    it "routes to #show" do
      expect(:get => "/informasi_pengumuman/1").to route_to("informasi_pengumuman#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/informasi_pengumuman/1/edit").to route_to("informasi_pengumuman#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/informasi_pengumuman").to route_to("informasi_pengumuman#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/informasi_pengumuman/1").to route_to("informasi_pengumuman#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/informasi_pengumuman/1").to route_to("informasi_pengumuman#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/informasi_pengumuman/1").to route_to("informasi_pengumuman#destroy", :id => "1")
    end
  end
end
