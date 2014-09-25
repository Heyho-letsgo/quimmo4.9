require 'rails_helper'

RSpec.describe "principal_groupes/edit", :type => :view do
  before(:each) do
    @principal_groupe = assign(:principal_groupe, PrincipalGroupe.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit principal_groupe form" do
    render

    assert_select "form[action=?][method=?]", principal_groupe_path(@principal_groupe), "post" do

      assert_select "input#principal_groupe_name[name=?]", "principal_groupe[name]"
    end
  end
end
