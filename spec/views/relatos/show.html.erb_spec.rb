require 'spec_helper'

describe "relatos/show" do
  before(:each) do
    @relato = assign(:relato, stub_model(Relato,
      :detalhes => "Detalhes",
      :item => nil,
      :patologia => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalhes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
