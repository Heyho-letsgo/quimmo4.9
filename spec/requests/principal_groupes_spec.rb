require 'rails_helper'

RSpec.describe "PrincipalGroupes", :type => :request do
  describe "GET /principal_groupes" do
    it "works! (now write some real specs)" do
      get principal_groupes_path
      expect(response).to have_http_status(200)
    end
  end
end
