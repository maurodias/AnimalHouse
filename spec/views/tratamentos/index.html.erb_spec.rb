require 'spec_helper'

describe "tratamentos/index" do
  before(:each) do
    assign(:tratamentos, [
      stub_model(Tratamento,
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil
      ),
      stub_model(Tratamento,
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil
      )
    ])
  end

  it "renders a list of tratamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
