require 'spec_helper'

describe "follows/index" do
  before(:each) do
    assign(:follows, [
      stub_model(Follow,
        :follower => nil,
        :followed => nil,
        :status => "Status"
      ),
      stub_model(Follow,
        :follower => nil,
        :followed => nil,
        :status => "Status"
      )
    ])
  end

  it "renders a list of follows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
