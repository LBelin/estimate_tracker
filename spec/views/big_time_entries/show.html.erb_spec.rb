require 'rails_helper'

RSpec.describe "big_time_entries/show", type: :view do
  before(:each) do
    @big_time_entry = assign(:big_time_entry, BigTimeEntry.create!(
      :id => 1,
      :person => "Person",
      :hours => "9.99",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Person/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
