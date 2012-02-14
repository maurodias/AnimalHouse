require 'spec_helper'

describe "veterinarios/edit" do
  before(:each) do
    @veterinario = assign(:veterinario, stub_model(Veterinario,
      :crmv => "MyString",
      :status => "MyString",
      :telefone => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :endereco => "MyString",
      :cep => "MyString",
      :nota => "MyString",
      :dtModificacao => "MyString",
      :login => "MyString",
      :pass => "MyString",
      :fotoperfil => "MyString"
    ))
  end

  it "renders the edit veterinario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => veterinarios_path(@veterinario), :method => "post" do
      assert_select "input#veterinario_crmv", :name => "veterinario[crmv]"
      assert_select "input#veterinario_status", :name => "veterinario[status]"
      assert_select "input#veterinario_telefone", :name => "veterinario[telefone]"
      assert_select "input#veterinario_email", :name => "veterinario[email]"
      assert_select "input#veterinario_telefone", :name => "veterinario[telefone]"
      assert_select "input#veterinario_endereco", :name => "veterinario[endereco]"
      assert_select "input#veterinario_cep", :name => "veterinario[cep]"
      assert_select "input#veterinario_nota", :name => "veterinario[nota]"
      assert_select "input#veterinario_dtModificacao", :name => "veterinario[dtModificacao]"
      assert_select "input#veterinario_login", :name => "veterinario[login]"
      assert_select "input#veterinario_pass", :name => "veterinario[pass]"
      assert_select "input#veterinario_fotoperfil", :name => "veterinario[fotoperfil]"
    end
  end
end
