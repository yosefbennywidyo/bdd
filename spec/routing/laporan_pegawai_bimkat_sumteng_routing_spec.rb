require "rails_helper"

RSpec.describe LaporanPegawaiBimkatSumtengController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/laporan_pegawai_bimkat_sumteng").to route_to("laporan_pegawai_bimkat_sumteng#index")
    end

    it "routes to #new" do
      expect(:get => "/laporan_pegawai_bimkat_sumteng/new").to route_to("laporan_pegawai_bimkat_sumteng#new")
    end

    it "routes to #show" do
      expect(:get => "/laporan_pegawai_bimkat_sumteng/1").to route_to("laporan_pegawai_bimkat_sumteng#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/laporan_pegawai_bimkat_sumteng/1/edit").to route_to("laporan_pegawai_bimkat_sumteng#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/laporan_pegawai_bimkat_sumteng").to route_to("laporan_pegawai_bimkat_sumteng#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/laporan_pegawai_bimkat_sumteng/1").to route_to("laporan_pegawai_bimkat_sumteng#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/laporan_pegawai_bimkat_sumteng/1").to route_to("laporan_pegawai_bimkat_sumteng#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/laporan_pegawai_bimkat_sumteng/1").to route_to("laporan_pegawai_bimkat_sumteng#destroy", :id => "1")
    end
  end
end
