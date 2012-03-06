require 'spec_helper'

describe "follows/edit" do
  before(:each) do
    @follow = assign(:follow, stub_model(Follow,
      :follower => nil,
      :followed => nil,
      :status => "MyString"
    ))
  end

  it "renders the edit follow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => follows_path(@follow), :method => "post" do
      assert_select "input#follow_follower", :name => "follow[follower]"
      assert_select "input#follow_followed", :name => "follow[followed]"
      assert_select "input#follow_status", :name => "follow[status]"
    end
  end
end
