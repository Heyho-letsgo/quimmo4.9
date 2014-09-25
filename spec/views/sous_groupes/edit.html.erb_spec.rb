require 'rails_helper'

RSpec.describe "sous_groupes/edit", :type => :view do
  before(:each) do
    @sous_groupe = assign(:sous_groupe, SousGroupe.create!(
      :nom => "MyString",
      :principal_groupe => nil
    ))
  end

  it "renders the edit sous_groupe form" do
    render

    assert_select "form[action=?][method=?]", sous_groupe_path(@sous_groupe), "post" do

      assert_select "input#sous_groupe_nom[name=?]", "sous_groupe[nom]"

      assert_select "input#sous_groupe_principal_groupe_id[name=?]", "sous_groupe[principal_groupe_id]"
    end
  end
end
