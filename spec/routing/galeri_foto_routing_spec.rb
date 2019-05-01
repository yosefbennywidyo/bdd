require "rails_helper"

RSpec.describe GaleriFotoController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/galeri_foto").to route_to("galeri_foto#index")
    end

    it "routes to #new" do
      expect(:get => "/galeri_foto/new").to route_to("galeri_foto#new")
    end

    it "routes to #show" do
      expect(:get => "/galeri_foto/1").to route_to("galeri_foto#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/galeri_foto/1/edit").to route_to("galeri_foto#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/galeri_foto").to route_to("galeri_foto#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/galeri_foto/1").to route_to("galeri_foto#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/galeri_foto/1").to route_to("galeri_foto#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/galeri_foto/1").to route_to("galeri_foto#destroy", :id => "1")
    end
  end
end
