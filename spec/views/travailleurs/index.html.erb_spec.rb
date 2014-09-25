require 'rails_helper'

RSpec.describe "travailleurs/index", :type => :view do
  before(:each) do
    assign(:travailleurs, [
      Travailleur.create!(
        :nom => "Nom",
        :principal_groupe => nil,
        :sous_groupe => nil,
        :agence => nil,
        :user => nil
      ),
      Travailleur.create!(
        :nom => "Nom",
        :principal_groupe => nil,
        :sous_groupe => nil,
        :agence => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of travailleurs" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
