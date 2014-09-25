require 'rails_helper'

RSpec.describe "agences/show", :type => :view do
  before(:each) do
    @agence = assign(:agence, Agence.create!(
      :nom => "Nom",
      :principal_groupe => nil,
      :sous_groupe => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
