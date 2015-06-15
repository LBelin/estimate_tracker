require 'rails_helper'

RSpec.describe "big_time_entries/index", type: :view do
  before(:each) do
    assign(:big_time_entries, [
      BigTimeEntry.create!(
        :id => 1,
        :person => "Person",
        :hours => "9.99",
        :comment => "MyText"
      ),
      BigTimeEntry.create!(
        :id => 1,
        :person => "Person",
        :hours => "9.99",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of big_time_entries" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Person".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
