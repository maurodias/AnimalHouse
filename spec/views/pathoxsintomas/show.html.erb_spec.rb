require 'spec_helper'

describe "pathoxsintomas/show" do
  before(:each) do
    @pathoxsintoma = assign(:pathoxsintoma, stub_model(Pathoxsintoma,
      :itemlink => nil,
      :patologia => nil,
      :sintoma => nil
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
