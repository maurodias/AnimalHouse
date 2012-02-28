require 'spec_helper'

describe "veterinarios/show" do
  before(:each) do
    @veterinario = assign(:veterinario, stub_model(Veterinario,
      :crmv => "Crmv",
      :status => "Status",
      :nome => "Nome",
      :email => "Email",
      :telefone => "Telefone",
      :endereco => "Endereco",
      :CEP => "Cep",
      :nota => "Nota",
      :imageURL => "Imageurl",
      :detalhes => "Detalhes",
      :admin => "Admin",
      :login => "Login",
      :pass => "Pass",
      :cidade => "Cidade",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Crmv/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
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
    rendered.should match(/Imageurl/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalhes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Admin/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pass/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cidade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Estado/)
  end
end
