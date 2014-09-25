require 'rails_helper'

RSpec.describe "principal_groupes/new", :type => :view do
  before(:each) do
    assign(:principal_groupe, PrincipalGroupe.new(
      :name => "MyString"
    ))
  end

  it "renders new principal_groupe form" do
    render

    assert_select "form[action=?][method=?]", principal_groupes_path, "post" do

      assert_select "input#principal_groupe_name[name=?]", "principal_groupe[name]"
    end
  end
end
