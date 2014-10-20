require 'rails_helper'

RSpec.describe "state_recycle_laws/show", :type => :view do
  before(:each) do
    @state_recycle_law = assign(:state_recycle_law, StateRecycleLaw.create!(
      :item_id => 1,
      :state_name => "State Name",
      :state_abr => "State Abr",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/State Name/)
    expect(rendered).to match(/State Abr/)
    expect(rendered).to match(/MyText/)
  end
end
