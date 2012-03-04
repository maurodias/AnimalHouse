require 'spec_helper'

describe "patologia/edit" do
  before(:each) do
    @patologium = assign(:patologium, stub_model(Patologium,
      :nomepopular => "MyString",
      :nome => "MyString",
      :detalhes => "MyString",
      :item => nil,
      :especialidade => nil
    ))
  end

  it "renders the edit patologium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patologia_path(@patologium), :method => "post" do
      assert_select "input#patologium_nomepopular", :name => "patologium[nomepopular]"
      assert_select "input#patologium_nome", :name => "patologium[nome]"
      assert_select "input#patologium_detalhes", :name => "patologium[detalhes]"
      assert_select "input#patologium_item", :name => "patologium[item]"
      assert_select "input#patologium_especialidade", :name => "patologium[especialidade]"
    end
  end
end
