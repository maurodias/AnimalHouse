require 'spec_helper'

describe "pathoxtratamentos/index" do
  before(:each) do
    assign(:pathoxtratamentos, [
      stub_model(Pathoxtratamento,
        :itemlink => nil,
        :patologia => nil,
        :tratamento => nil
      ),
      stub_model(Pathoxtratamento,
        :itemlink => nil,
        :patologia => nil,
        :tratamento => nil
      )
    ])
  end

  it "renders a list of pathoxtratamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
