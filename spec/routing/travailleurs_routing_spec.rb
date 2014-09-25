require "rails_helper"

RSpec.describe TravailleursController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/travailleurs").to route_to("travailleurs#index")
    end

    it "routes to #new" do
      expect(:get => "/travailleurs/new").to route_to("travailleurs#new")
    end

    it "routes to #show" do
      expect(:get => "/travailleurs/1").to route_to("travailleurs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/travailleurs/1/edit").to route_to("travailleurs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/travailleurs").to route_to("travailleurs#create")
    end

    it "routes to #update" do
      expect(:put => "/travailleurs/1").to route_to("travailleurs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/travailleurs/1").to route_to("travailleurs#destroy", :id => "1")
    end

  end
end
