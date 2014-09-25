require "rails_helper"

RSpec.describe SousGroupesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sous_groupes").to route_to("sous_groupes#index")
    end

    it "routes to #new" do
      expect(:get => "/sous_groupes/new").to route_to("sous_groupes#new")
    end

    it "routes to #show" do
      expect(:get => "/sous_groupes/1").to route_to("sous_groupes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sous_groupes/1/edit").to route_to("sous_groupes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sous_groupes").to route_to("sous_groupes#create")
    end

    it "routes to #update" do
      expect(:put => "/sous_groupes/1").to route_to("sous_groupes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sous_groupes/1").to route_to("sous_groupes#destroy", :id => "1")
    end

  end
end
