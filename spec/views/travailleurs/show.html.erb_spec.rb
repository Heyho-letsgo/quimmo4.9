require 'rails_helper'

RSpec.describe "travailleurs/show", :type => :view do
  before(:each) do
    @travailleur = assign(:travailleur, Travailleur.create!(
      :nom => "Nom",
      :principal_groupe => nil,
      :sous_groupe => nil,
      :agence => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
