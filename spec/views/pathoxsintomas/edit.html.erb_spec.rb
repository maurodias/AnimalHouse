require 'spec_helper'

describe "pathoxsintomas/edit" do
  before(:each) do
    @pathoxsintoma = assign(:pathoxsintoma, stub_model(Pathoxsintoma,
      :itemlink => nil,
      :patologia => nil,
      :sintoma => nil
    ))
  end

  it "renders the edit pathoxsintoma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pathoxsintomas_path(@pathoxsintoma), :method => "post" do
      assert_select "input#pathoxsintoma_itemlink", :name => "pathoxsintoma[itemlink]"
      assert_select "input#pathoxsintoma_patologia", :name => "pathoxsintoma[patologia]"
      assert_select "input#pathoxsintoma_sintoma", :name => "pathoxsintoma[sintoma]"
    end
  end
end
