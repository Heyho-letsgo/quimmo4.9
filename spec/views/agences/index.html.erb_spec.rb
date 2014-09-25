require 'rails_helper'

RSpec.describe "agences/index", :type => :view do
  before(:each) do
    assign(:agences, [
      Agence.create!(
        :nom => "Nom",
        :principal_groupe => nil,
        :sous_groupe => nil
      ),
      Agence.create!(
        :nom => "Nom",
        :principal_groupe => nil,
        :sous_groupe => nil
      )
    ])
  end

  it "renders a list of agences" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
