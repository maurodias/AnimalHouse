require 'spec_helper'

describe "pathoxracas/index" do
  before(:each) do
    assign(:pathoxracas, [
      stub_model(Pathoxraca,
        :itemlink => nil,
        :patologia => nil,
        :raca => nil
      ),
      stub_model(Pathoxraca,
        :itemlink => nil,
        :patologia => nil,
        :raca => nil
      )
    ])
  end

  it "renders a list of pathoxracas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
