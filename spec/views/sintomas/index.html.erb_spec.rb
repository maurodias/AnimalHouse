require 'spec_helper'

describe "sintomas/index" do
  before(:each) do
    assign(:sintomas, [
      stub_model(Sintoma,
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil
      ),
      stub_model(Sintoma,
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil
      )
    ])
  end

  it "renders a list of sintomas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
