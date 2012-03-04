require 'spec_helper'

describe "patologias/show" do
  before(:each) do
    @patologia = assign(:patologia, stub_model(Patologia,
      :nome => "Nome",
      :nomePopular => "Nomepopular",
      :detalhes => "Detalhes",
      :especialidade => nil,
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomepopular/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalhes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
