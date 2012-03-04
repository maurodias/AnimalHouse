require 'spec_helper'

describe "patologia/index" do
  before(:each) do
    assign(:patologia, [
      stub_model(Patologium,
        :nomepopular => "Nomepopular",
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil,
        :especialidade => nil
      ),
      stub_model(Patologium,
        :nomepopular => "Nomepopular",
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil,
        :especialidade => nil
      )
    ])
  end

  it "renders a list of patologia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomepopular".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
