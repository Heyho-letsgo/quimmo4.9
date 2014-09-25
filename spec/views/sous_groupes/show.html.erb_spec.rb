require 'rails_helper'

RSpec.describe "sous_groupes/show", :type => :view do
  before(:each) do
    @sous_groupe = assign(:sous_groupe, SousGroupe.create!(
      :nom => "Nom",
      :principal_groupe => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(//)
  end
end
