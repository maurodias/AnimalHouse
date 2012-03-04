require 'spec_helper'

describe "especialidades/show" do
  before(:each) do
    @especialidade = assign(:especialidade, stub_model(Especialidade,
      :nome => "Nome",
      :detalhes => "Detalhes",
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalhes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
