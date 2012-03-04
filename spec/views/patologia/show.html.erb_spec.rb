require 'spec_helper'

describe "patologia/show" do
  before(:each) do
    @patologium = assign(:patologium, stub_model(Patologium,
      :nomepopular => "Nomepopular",
      :nome => "Nome",
      :detalhes => "Detalhes",
      :item => nil,
      :especialidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomepopular/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalhes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
