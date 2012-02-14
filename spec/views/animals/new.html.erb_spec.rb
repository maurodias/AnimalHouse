require 'spec_helper'

describe "animals/new" do
  before(:each) do
    assign(:animal, stub_model(Animal,
      :nome => "MyString",
      :nomePopular => "MyString",
      :status => "MyString",
      :dtModificacao => "MyString",
      :veterinario => nil
    ).as_new_record)
  end

  it "renders new animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path, :method => "post" do
      assert_select "input#animal_nome", :name => "animal[nome]"
      assert_select "input#animal_nomePopular", :name => "animal[nomePopular]"
      assert_select "input#animal_status", :name => "animal[status]"
      assert_select "input#animal_dtModificacao", :name => "animal[dtModificacao]"
      assert_select "input#animal_veterinario", :name => "animal[veterinario]"
    end
  end
end
