require 'rails_helper'

RSpec.describe "sous_groupes/new", :type => :view do
  before(:each) do
    assign(:sous_groupe, SousGroupe.new(
      :nom => "MyString",
      :principal_groupe => nil
    ))
  end

  it "renders new sous_groupe form" do
    render

    assert_select "form[action=?][method=?]", sous_groupes_path, "post" do

      assert_select "input#sous_groupe_nom[name=?]", "sous_groupe[nom]"

      assert_select "input#sous_groupe_principal_groupe_id[name=?]", "sous_groupe[principal_groupe_id]"
    end
  end
end
