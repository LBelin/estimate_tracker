require 'rails_helper'

RSpec.describe "fog_bugz_cases/new", type: :view do
  before(:each) do
    assign(:fog_bugz_case, FogBugzCase.new(
      :id => 1,
      :title => "MyString",
      :estimate => 1,
      :current => "9.99",
      :person => "MyString",
      :resolved? => false,
      :percentage => 1,
      :active? => false
    ))
  end

  it "renders new fog_bugz_case form" do
    render

    assert_select "form[action=?][method=?]", fog_bugz_cases_path, "post" do

      assert_select "input#fog_bugz_case_id[name=?]", "fog_bugz_case[id]"

      assert_select "input#fog_bugz_case_title[name=?]", "fog_bugz_case[title]"

      assert_select "input#fog_bugz_case_estimate[name=?]", "fog_bugz_case[estimate]"

      assert_select "input#fog_bugz_case_current[name=?]", "fog_bugz_case[current]"

      assert_select "input#fog_bugz_case_person[name=?]", "fog_bugz_case[person]"

      assert_select "input#fog_bugz_case_resolved?[name=?]", "fog_bugz_case[resolved?]"

      assert_select "input#fog_bugz_case_percentage[name=?]", "fog_bugz_case[percentage]"

      assert_select "input#fog_bugz_case_active?[name=?]", "fog_bugz_case[active?]"
    end
  end
end
