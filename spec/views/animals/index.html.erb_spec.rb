require 'spec_helper'

describe "animals/index" do
  before(:each) do
    assign(:animals, [
      stub_model(Animal,
        :nome => "Nome",
        :nomePopular => "Nomepopular",
        :status => "Status",
        :dtModificacao => "Dtmodificacao",
        :veterinario => nil
      ),
      stub_model(Animal,
        :nome => "Nome",
        :nomePopular => "Nomepopular",
        :status => "Status",
        :dtModificacao => "Dtmodificacao",
        :veterinario => nil
      )
    ])
  end

  it "renders a list of animals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomepopular".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dtmodificacao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
