require 'spec_helper'

describe "follows/show" do
  before(:each) do
    @follow = assign(:follow, stub_model(Follow,
      :follower => nil,
      :followed => nil,
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
