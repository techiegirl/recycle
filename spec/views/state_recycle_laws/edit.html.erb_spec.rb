require 'rails_helper'

RSpec.describe "state_recycle_laws/edit", :type => :view do
  before(:each) do
    @state_recycle_law = assign(:state_recycle_law, StateRecycleLaw.create!(
      :item_id => 1,
      :state_name => "MyString",
      :state_abr => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit state_recycle_law form" do
    render

    assert_select "form[action=?][method=?]", state_recycle_law_path(@state_recycle_law), "post" do

      assert_select "input#state_recycle_law_item_id[name=?]", "state_recycle_law[item_id]"

      assert_select "input#state_recycle_law_state_name[name=?]", "state_recycle_law[state_name]"

      assert_select "input#state_recycle_law_state_abr[name=?]", "state_recycle_law[state_abr]"

      assert_select "textarea#state_recycle_law_description[name=?]", "state_recycle_law[description]"
    end
  end
end
