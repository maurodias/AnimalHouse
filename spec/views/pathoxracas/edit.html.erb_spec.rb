require 'spec_helper'

describe "pathoxracas/edit" do
  before(:each) do
    @pathoxraca = assign(:pathoxraca, stub_model(Pathoxraca,
      :itemlink => nil,
      :patologia => nil,
      :raca => nil
    ))
  end

  it "renders the edit pathoxraca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pathoxracas_path(@pathoxraca), :method => "post" do
      assert_select "input#pathoxraca_itemlink", :name => "pathoxraca[itemlink]"
      assert_select "input#pathoxraca_patologia", :name => "pathoxraca[patologia]"
      assert_select "input#pathoxraca_raca", :name => "pathoxraca[raca]"
    end
  end
end
