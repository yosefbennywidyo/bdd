require "rails_helper"

RSpec.describe GaleriVideoController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/galeri_video").to route_to("galeri_video#index")
    end

    it "routes to #new" do
      expect(:get => "/galeri_video/new").to route_to("galeri_video#new")
    end

    it "routes to #show" do
      expect(:get => "/galeri_video/1").to route_to("galeri_video#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/galeri_video/1/edit").to route_to("galeri_video#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/galeri_video").to route_to("galeri_video#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/galeri_video/1").to route_to("galeri_video#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/galeri_video/1").to route_to("galeri_video#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/galeri_video/1").to route_to("galeri_video#destroy", :id => "1")
    end
  end
end
