require 'rails_helper'

RSpec.describe "SousGroupes", :type => :request do
  describe "GET /sous_groupes" do
    it "works! (now write some real specs)" do
      get sous_groupes_path
      expect(response).to have_http_status(200)
    end
  end
end
