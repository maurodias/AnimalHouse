require 'spec_helper'

describe "tratamentos/new" do
  before(:each) do
    assign(:tratamento, stub_model(Tratamento,
      :nome => "MyString",
      :detalhes => "MyString",
      :item => nil
    ).as_new_record)
  end

  it "renders new tratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tratamentos_path, :method => "post" do
      assert_select "input#tratamento_nome", :name => "tratamento[nome]"
      assert_select "input#tratamento_detalhes", :name => "tratamento[detalhes]"
      assert_select "input#tratamento_item", :name => "tratamento[item]"
    end
  end
end
