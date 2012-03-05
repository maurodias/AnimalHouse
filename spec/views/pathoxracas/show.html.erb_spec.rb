require 'spec_helper'

describe "pathoxracas/show" do
  before(:each) do
    @pathoxraca = assign(:pathoxraca, stub_model(Pathoxraca,
      :itemlink => nil,
      :patologia => nil,
      :raca => nil
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
