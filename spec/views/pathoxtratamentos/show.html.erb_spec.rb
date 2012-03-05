require 'spec_helper'

describe "pathoxtratamentos/show" do
  before(:each) do
    @pathoxtratamento = assign(:pathoxtratamento, stub_model(Pathoxtratamento,
      :itemlink => nil,
      :patologia => nil,
      :tratamento => nil
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
