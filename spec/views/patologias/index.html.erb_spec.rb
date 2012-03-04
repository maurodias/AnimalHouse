require 'spec_helper'

describe "patologias/index" do
  before(:each) do
    assign(:patologias, [
      stub_model(Patologia,
        :nome => "Nome",
        :nomePopular => "Nomepopular",
        :detalhes => "Detalhes",
        :especialidade => nil,
        :item => nil
      ),
      stub_model(Patologia,
        :nome => "Nome",
        :nomePopular => "Nomepopular",
        :detalhes => "Detalhes",
        :especialidade => nil,
        :item => nil
      )
    ])
  end

  it "renders a list of patologias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomepopular".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
