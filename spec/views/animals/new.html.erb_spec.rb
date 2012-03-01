require 'spec_helper'

describe "animals/new" do
  before(:each) do
    assign(:animal, stub_model(Animal,
      :nomeCientifico => "MyString",
      :nomePopular => "MyString",
      :detalhes => "MyString",
      :item => nil
    ).as_new_record)
  end

  it "renders new animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path, :method => "post" do
      assert_select "input#animal_nomeCientifico", :name => "animal[nomeCientifico]"
      assert_select "input#animal_nomePopular", :name => "animal[nomePopular]"
      assert_select "input#animal_detalhes", :name => "animal[detalhes]"
      assert_select "input#animal_item", :name => "animal[item]"
    end
  end
end
