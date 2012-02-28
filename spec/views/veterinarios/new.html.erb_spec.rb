require 'spec_helper'

describe "veterinarios/new" do
  before(:each) do
    assign(:veterinario, stub_model(Veterinario,
      :crmv => "MyString",
      :status => "MyString",
      :nome => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :CEP => "MyString",
      :nota => "MyString",
      :imageURL => "MyString",
      :detalhes => "MyString",
      :admin => "MyString",
      :login => "MyString",
      :pass => "MyString",
      :cidade => "MyString",
      :estado => "MyString"
    ).as_new_record)
  end

  it "renders new veterinario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => veterinarios_path, :method => "post" do
      assert_select "input#veterinario_crmv", :name => "veterinario[crmv]"
      assert_select "input#veterinario_status", :name => "veterinario[status]"
      assert_select "input#veterinario_nome", :name => "veterinario[nome]"
      assert_select "input#veterinario_email", :name => "veterinario[email]"
      assert_select "input#veterinario_telefone", :name => "veterinario[telefone]"
      assert_select "input#veterinario_endereco", :name => "veterinario[endereco]"
      assert_select "input#veterinario_CEP", :name => "veterinario[CEP]"
      assert_select "input#veterinario_nota", :name => "veterinario[nota]"
      assert_select "input#veterinario_imageURL", :name => "veterinario[imageURL]"
      assert_select "input#veterinario_detalhes", :name => "veterinario[detalhes]"
      assert_select "input#veterinario_admin", :name => "veterinario[admin]"
      assert_select "input#veterinario_login", :name => "veterinario[login]"
      assert_select "input#veterinario_pass", :name => "veterinario[pass]"
      assert_select "input#veterinario_cidade", :name => "veterinario[cidade]"
      assert_select "input#veterinario_estado", :name => "veterinario[estado]"
    end
  end
end
