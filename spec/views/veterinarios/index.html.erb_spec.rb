require 'spec_helper'

describe "veterinarios/index" do
  before(:each) do
    assign(:veterinarios, [
      stub_model(Veterinario,
        :crmv => "Crmv",
        :status => "Status",
        :telefone => "Telefone",
        :email => "Email",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :cep => "Cep",
        :nota => "Nota",
        :dtModificacao => "Dtmodificacao",
        :login => "Login",
        :pass => "Pass",
        :fotoperfil => "Fotoperfil"
      ),
      stub_model(Veterinario,
        :crmv => "Crmv",
        :status => "Status",
        :telefone => "Telefone",
        :email => "Email",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :cep => "Cep",
        :nota => "Nota",
        :dtModificacao => "Dtmodificacao",
        :login => "Login",
        :pass => "Pass",
        :fotoperfil => "Fotoperfil"
      )
    ])
  end

  it "renders a list of veterinarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Crmv".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nota".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dtmodificacao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pass".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fotoperfil".to_s, :count => 2
  end
end
