require 'spec_helper'

describe "animals/edit" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :nome => "MyString",
      :nomePopular => "MyString",
      :status => "MyString",
      :dtModificacao => "MyString",
      :veterinario => nil
    ))
  end

  it "renders the edit animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path(@animal), :method => "post" do
      assert_select "input#animal_nome", :name => "animal[nome]"
      assert_select "input#animal_nomePopular", :name => "animal[nomePopular]"
      assert_select "input#animal_status", :name => "animal[status]"
      assert_select "input#animal_dtModificacao", :name => "animal[dtModificacao]"
      assert_select "input#animal_veterinario", :name => "animal[veterinario]"
    end
  end
end
