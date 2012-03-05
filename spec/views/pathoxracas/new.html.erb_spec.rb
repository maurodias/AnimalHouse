require 'spec_helper'

describe "pathoxracas/new" do
  before(:each) do
    assign(:pathoxraca, stub_model(Pathoxraca,
      :itemlink => nil,
      :patologia => nil,
      :raca => nil
    ).as_new_record)
  end

  it "renders new pathoxraca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pathoxracas_path, :method => "post" do
      assert_select "input#pathoxraca_itemlink", :name => "pathoxraca[itemlink]"
      assert_select "input#pathoxraca_patologia", :name => "pathoxraca[patologia]"
      assert_select "input#pathoxraca_raca", :name => "pathoxraca[raca]"
    end
  end
end
