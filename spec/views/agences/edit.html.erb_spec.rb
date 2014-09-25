require 'rails_helper'

RSpec.describe "agences/edit", :type => :view do
  before(:each) do
    @agence = assign(:agence, Agence.create!(
      :nom => "MyString",
      :principal_groupe => nil,
      :sous_groupe => nil
    ))
  end

  it "renders the edit agence form" do
    render

    assert_select "form[action=?][method=?]", agence_path(@agence), "post" do

      assert_select "input#agence_nom[name=?]", "agence[nom]"

      assert_select "input#agence_principal_groupe_id[name=?]", "agence[principal_groupe_id]"

      assert_select "input#agence_sous_groupe_id[name=?]", "agence[sous_groupe_id]"
    end
  end
end
