require 'rails_helper'

RSpec.describe "fog_bugz_cases/show", type: :view do
  before(:each) do
    @fog_bugz_case = assign(:fog_bugz_case, FogBugzCase.create!(
      :id => 1,
      :title => "Title",
      :estimate => 2,
      :current => "9.99",
      :person => "Person",
      :resolved? => false,
      :percentage => 3,
      :active? => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Person/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
  end
end
