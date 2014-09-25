require 'rails_helper'

RSpec.describe "sous_groupes/index", :type => :view do
  before(:each) do
    assign(:sous_groupes, [
      SousGroupe.create!(
        :nom => "Nom",
        :principal_groupe => nil
      ),
      SousGroupe.create!(
        :nom => "Nom",
        :principal_groupe => nil
      )
    ])
  end

  it "renders a list of sous_groupes" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
