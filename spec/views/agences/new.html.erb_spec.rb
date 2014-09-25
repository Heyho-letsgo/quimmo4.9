require 'rails_helper'

RSpec.describe "agences/new", :type => :view do
  before(:each) do
    assign(:agence, Agence.new(
      :nom => "MyString",
      :principal_groupe => nil,
      :sous_groupe => nil
    ))
  end

  it "renders new agence form" do
    render

    assert_select "form[action=?][method=?]", agences_path, "post" do

      assert_select "input#agence_nom[name=?]", "agence[nom]"

      assert_select "input#agence_principal_groupe_id[name=?]", "agence[principal_groupe_id]"

      assert_select "input#agence_sous_groupe_id[name=?]", "agence[sous_groupe_id]"
    end
  end
end
