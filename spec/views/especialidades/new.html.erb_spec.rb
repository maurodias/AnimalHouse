require 'spec_helper'

describe "especialidades/new" do
  before(:each) do
    assign(:especialidade, stub_model(Especialidade,
      :nome => "MyString",
      :detalhes => "MyString",
      :item => nil
    ).as_new_record)
  end

  it "renders new especialidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => especialidades_path, :method => "post" do
      assert_select "input#especialidade_nome", :name => "especialidade[nome]"
      assert_select "input#especialidade_detalhes", :name => "especialidade[detalhes]"
      assert_select "input#especialidade_item", :name => "especialidade[item]"
    end
  end
end
