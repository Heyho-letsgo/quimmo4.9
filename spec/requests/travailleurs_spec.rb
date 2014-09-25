require 'rails_helper'

RSpec.describe "Travailleurs", :type => :request do
  describe "GET /travailleurs" do
    it "works! (now write some real specs)" do
      get travailleurs_path
      expect(response).to have_http_status(200)
    end
  end
end
