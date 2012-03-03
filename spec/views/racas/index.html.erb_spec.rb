require 'spec_helper'

describe "racas/index" do
  before(:each) do
    assign(:racas, [
      stub_model(Raca,
        :animal => nil,
        :origem => "Origem",
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil
      ),
      stub_model(Raca,
        :animal => nil,
        :origem => "Origem",
        :nome => "Nome",
        :detalhes => "Detalhes",
        :item => nil
      )
    ])
  end

  it "renders a list of racas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Origem".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
