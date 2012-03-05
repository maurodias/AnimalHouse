require 'spec_helper'

describe "itemlinks/show" do
  before(:each) do
    @itemlink = assign(:itemlink, stub_model(Itemlink,
      :status => "Status",
      :veterinario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
