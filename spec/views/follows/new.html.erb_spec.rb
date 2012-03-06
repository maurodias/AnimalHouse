require 'spec_helper'

describe "follows/new" do
  before(:each) do
    assign(:follow, stub_model(Follow,
      :follower => nil,
      :followed => nil,
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new follow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => follows_path, :method => "post" do
      assert_select "input#follow_follower", :name => "follow[follower]"
      assert_select "input#follow_followed", :name => "follow[followed]"
      assert_select "input#follow_status", :name => "follow[status]"
    end
  end
end
