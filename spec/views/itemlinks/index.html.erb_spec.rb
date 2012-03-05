require 'spec_helper'

describe "itemlinks/index" do
  before(:each) do
    assign(:itemlinks, [
      stub_model(Itemlink,
        :status => "Status",
        :veterinario => nil
      ),
      stub_model(Itemlink,
        :status => "Status",
        :veterinario => nil
      )
    ])
  end

  it "renders a list of itemlinks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
