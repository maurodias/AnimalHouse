require 'spec_helper'

describe "sintomas/new" do
  before(:each) do
    assign(:sintoma, stub_model(Sintoma,
      :nome => "MyString",
      :detalhes => "MyString",
      :item => nil
    ).as_new_record)
  end

  it "renders new sintoma form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sintomas_path, :method => "post" do
      assert_select "input#sintoma_nome", :name => "sintoma[nome]"
      assert_select "input#sintoma_detalhes", :name => "sintoma[detalhes]"
      assert_select "input#sintoma_item", :name => "sintoma[item]"
    end
  end
end
