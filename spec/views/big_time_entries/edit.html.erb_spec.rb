require 'rails_helper'

RSpec.describe "big_time_entries/edit", type: :view do
  before(:each) do
    @big_time_entry = assign(:big_time_entry, BigTimeEntry.create!(
      :id => 1,
      :person => "MyString",
      :hours => "9.99",
      :comment => "MyText"
    ))
  end

  it "renders the edit big_time_entry form" do
    render

    assert_select "form[action=?][method=?]", big_time_entry_path(@big_time_entry), "post" do

      assert_select "input#big_time_entry_id[name=?]", "big_time_entry[id]"

      assert_select "input#big_time_entry_person[name=?]", "big_time_entry[person]"

      assert_select "input#big_time_entry_hours[name=?]", "big_time_entry[hours]"

      assert_select "textarea#big_time_entry_comment[name=?]", "big_time_entry[comment]"
    end
  end
end
