require 'rails_helper'

RSpec.describe "travailleurs/edit", :type => :view do
  before(:each) do
    @travailleur = assign(:travailleur, Travailleur.create!(
      :nom => "MyString",
      :principal_groupe => nil,
      :sous_groupe => nil,
      :agence => nil,
      :user => nil
    ))
  end

  it "renders the edit travailleur form" do
    render

    assert_select "form[action=?][method=?]", travailleur_path(@travailleur), "post" do

      assert_select "input#travailleur_nom[name=?]", "travailleur[nom]"

      assert_select "input#travailleur_principal_groupe_id[name=?]", "travailleur[principal_groupe_id]"

      assert_select "input#travailleur_sous_groupe_id[name=?]", "travailleur[sous_groupe_id]"

      assert_select "input#travailleur_agence_id[name=?]", "travailleur[agence_id]"

      assert_select "input#travailleur_user_id[name=?]", "travailleur[user_id]"
    end
  end
end
