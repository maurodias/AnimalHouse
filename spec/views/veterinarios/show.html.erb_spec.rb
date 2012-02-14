require 'spec_helper'

describe "veterinarios/show" do
  before(:each) do
    @veterinario = assign(:veterinario, stub_model(Veterinario,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Crmv/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cep/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nota/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dtmodificacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pass/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fotoperfil/)
  end
end
