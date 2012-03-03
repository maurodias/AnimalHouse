require 'spec_helper'

describe "sintomas/edit" do
  before(:each) do
    @sintoma = assign(:sintoma, stub_model(Sintoma,
      :nome => "MyString",
      :detalhes => "MyString",
      :item => nil
    ))
  end

  it "renders the edit sintoma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sintomas_path(@sintoma), :method => "post" do
      assert_select "input#sintoma_nome", :name => "sintoma[nome]"
      assert_select "input#sintoma_detalhes", :name => "sintoma[detalhes]"
      assert_select "input#sintoma_item", :name => "sintoma[item]"
    end
  end
end
