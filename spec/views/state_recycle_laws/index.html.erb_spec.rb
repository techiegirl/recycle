require 'rails_helper'

RSpec.describe "state_recycle_laws/index", :type => :view do
  before(:each) do
    assign(:state_recycle_laws, [
      StateRecycleLaw.create!(
        :item_id => 1,
        :state_name => "State Name",
        :state_abr => "State Abr",
        :description => "MyText"
      ),
      StateRecycleLaw.create!(
        :item_id => 1,
        :state_name => "State Name",
        :state_abr => "State Abr",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of state_recycle_laws" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "State Name".to_s, :count => 2
    assert_select "tr>td", :text => "State Abr".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
