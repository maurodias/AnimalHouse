require 'spec_helper'

describe "relatos/index" do
  before(:each) do
    assign(:relatos, [
      stub_model(Relato,
        :detalhes => "Detalhes",
        :item => nil,
        :patologia => nil
      ),
      stub_model(Relato,
        :detalhes => "Detalhes",
        :item => nil,
        :patologia => nil
      )
    ])
  end

  it "renders a list of relatos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
