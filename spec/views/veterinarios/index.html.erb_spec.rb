require 'spec_helper'

describe "veterinarios/index" do
  before(:each) do
    assign(:veterinarios, [
      stub_model(Veterinario,
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
      ),
      stub_model(Veterinario,
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
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
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
    assert_select "tr>td", :text => "Imageurl".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalhes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Admin".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pass".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
