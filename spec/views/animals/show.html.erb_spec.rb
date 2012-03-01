require 'spec_helper'

describe "animals/show" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :nomeCientifico => "Nomecientifico",
      :nomePopular => "Nomepopular",
      :detalhes => "Detalhes",
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomecientifico/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomepopular/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalhes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
