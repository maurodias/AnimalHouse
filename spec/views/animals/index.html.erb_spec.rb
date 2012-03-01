require 'spec_helper'

describe "animals/index" do
  before(:each) do
    assign(:animals, [
      stub_model(Animal,
        :nomeCientifico => "Nomecientifico",
        :nomePopular => "Nomepopular",
        :detalhes => "Detalhes",
        :item => nil
      ),
      stub_model(Animal,
        :nomeCientifico => "Nomecientifico",
        :nomePopular => "Nomepopular",
        :detalhes => "Detalhes",
        :item => nil
      )
    ])
  end

  it "renders a list of animals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomecientifico".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomepopular".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
