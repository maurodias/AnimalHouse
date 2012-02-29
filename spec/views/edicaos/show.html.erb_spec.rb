require 'spec_helper'

describe "edicaos/show" do
  before(:each) do
    @edicao = assign(:edicao, stub_model(Edicao,
      :status => "Status",
      :camposEditado => "Camposeditado",
      :veterinario => nil,
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Camposeditado/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
