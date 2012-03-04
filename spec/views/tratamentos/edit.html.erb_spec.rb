require 'spec_helper'

describe "tratamentos/edit" do
  before(:each) do
    @tratamento = assign(:tratamento, stub_model(Tratamento,
      :nome => "MyString",
      :detalhes => "MyString",
      :item => nil
    ))
  end

  it "renders the edit tratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tratamentos_path(@tratamento), :method => "post" do
      assert_select "input#tratamento_nome", :name => "tratamento[nome]"
      assert_select "input#tratamento_detalhes", :name => "tratamento[detalhes]"
      assert_select "input#tratamento_item", :name => "tratamento[item]"
    end
  end
end
