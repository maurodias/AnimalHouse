require 'spec_helper'

describe "vetxespecialidades/show" do
  before(:each) do
    @vetxespecialidade = assign(:vetxespecialidade, stub_model(Vetxespecialidade,
      :itemlink => nil,
      :veterinario => nil,
      :especialidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
