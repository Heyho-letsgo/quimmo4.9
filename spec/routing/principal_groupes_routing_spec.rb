require "rails_helper"

RSpec.describe PrincipalGroupesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/principal_groupes").to route_to("principal_groupes#index")
    end

    it "routes to #new" do
      expect(:get => "/principal_groupes/new").to route_to("principal_groupes#new")
    end

    it "routes to #show" do
      expect(:get => "/principal_groupes/1").to route_to("principal_groupes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/principal_groupes/1/edit").to route_to("principal_groupes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/principal_groupes").to route_to("principal_groupes#create")
    end

    it "routes to #update" do
      expect(:put => "/principal_groupes/1").to route_to("principal_groupes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/principal_groupes/1").to route_to("principal_groupes#destroy", :id => "1")
    end

  end
end
