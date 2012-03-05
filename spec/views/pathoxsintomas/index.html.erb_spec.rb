require 'spec_helper'

describe "pathoxsintomas/index" do
  before(:each) do
    assign(:pathoxsintomas, [
      stub_model(Pathoxsintoma,
        :itemlink => nil,
        :patologia => nil,
        :sintoma => nil
      ),
      stub_model(Pathoxsintoma,
        :itemlink => nil,
        :patologia => nil,
        :sintoma => nil
      )
    ])
  end

  it "renders a list of pathoxsintomas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
