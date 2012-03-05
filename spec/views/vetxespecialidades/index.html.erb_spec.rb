require 'spec_helper'

describe "vetxespecialidades/index" do
  before(:each) do
    assign(:vetxespecialidades, [
      stub_model(Vetxespecialidade,
        :itemlink => nil,
        :veterinario => nil,
        :especialidade => nil
      ),
      stub_model(Vetxespecialidade,
        :itemlink => nil,
        :veterinario => nil,
        :especialidade => nil
      )
    ])
  end

  it "renders a list of vetxespecialidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
