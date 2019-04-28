require "rails_helper"

RSpec.describe DataKeagamaanKatolikController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/data_keagamaan_katolik").to route_to("data_keagamaan_katolik#index")
    end

    it "routes to #new" do
      expect(:get => "/data_keagamaan_katolik/new").to route_to("data_keagamaan_katolik#new")
    end

    it "routes to #show" do
      expect(:get => "/data_keagamaan_katolik/1").to route_to("data_keagamaan_katolik#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/data_keagamaan_katolik/1/edit").to route_to("data_keagamaan_katolik#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/data_keagamaan_katolik").to route_to("data_keagamaan_katolik#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/data_keagamaan_katolik/1").to route_to("data_keagamaan_katolik#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/data_keagamaan_katolik/1").to route_to("data_keagamaan_katolik#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/data_keagamaan_katolik/1").to route_to("data_keagamaan_katolik#destroy", :id => "1")
    end
  end
end
