require "rails_helper"

RSpec.describe LaporanPenyuluhAgamaKatolikController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/laporan_penyuluh_agama_katolik").to route_to("laporan_penyuluh_agama_katolik#index")
    end

    it "routes to #new" do
      expect(:get => "/laporan_penyuluh_agama_katolik/new").to route_to("laporan_penyuluh_agama_katolik#new")
    end

    it "routes to #show" do
      expect(:get => "/laporan_penyuluh_agama_katolik/1").to route_to("laporan_penyuluh_agama_katolik#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/laporan_penyuluh_agama_katolik/1/edit").to route_to("laporan_penyuluh_agama_katolik#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/laporan_penyuluh_agama_katolik").to route_to("laporan_penyuluh_agama_katolik#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/laporan_penyuluh_agama_katolik/1").to route_to("laporan_penyuluh_agama_katolik#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/laporan_penyuluh_agama_katolik/1").to route_to("laporan_penyuluh_agama_katolik#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/laporan_penyuluh_agama_katolik/1").to route_to("laporan_penyuluh_agama_katolik#destroy", :id => "1")
    end
  end
end
