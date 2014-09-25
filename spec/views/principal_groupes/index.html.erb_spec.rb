require 'rails_helper'

RSpec.describe "principal_groupes/index", :type => :view do
  before(:each) do
    assign(:principal_groupes, [
      PrincipalGroupe.create!(
        :name => "Name"
      ),
      PrincipalGroupe.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of principal_groupes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
