require 'spec_helper'

describe "animals/show" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :nome => "Nome",
      :nomePopular => "Nomepopular",
      :status => "Status",
      :dtModificacao => "Dtmodificacao",
      :veterinario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomepopular/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dtmodificacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
