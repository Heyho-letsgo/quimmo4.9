require 'rails_helper'

RSpec.describe "principal_groupes/show", :type => :view do
  before(:each) do
    @principal_groupe = assign(:principal_groupe, PrincipalGroupe.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
