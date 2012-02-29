require 'spec_helper'

describe "edicaos/index" do
  before(:each) do
    assign(:edicaos, [
      stub_model(Edicao,
        :status => "Status",
        :camposEditado => "Camposeditado",
        :veterinario => nil,
        :item => nil
      ),
      stub_model(Edicao,
        :status => "Status",
        :camposEditado => "Camposeditado",
        :veterinario => nil,
        :item => nil
      )
    ])
  end

  it "renders a list of edicaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Camposeditado".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
