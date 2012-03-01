require 'spec_helper'

describe "animals/edit" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :nomeCientifico => "MyString",
      :nomePopular => "MyString",
      :detalhes => "MyString",
      :item => nil
    ))
  end

  it "renders the edit animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path(@animal), :method => "post" do
      assert_select "input#animal_nomeCientifico", :name => "animal[nomeCientifico]"
      assert_select "input#animal_nomePopular", :name => "animal[nomePopular]"
      assert_select "input#animal_detalhes", :name => "animal[detalhes]"
      assert_select "input#animal_item", :name => "animal[item]"
    end
  end
end
