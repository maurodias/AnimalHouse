require 'spec_helper'

feature 'gerenciar_veterinario' do
    before :each do
end

scenario 'Incluir veterinario' do
    visit new_veterinario_path

fill_in "crmv", :with => '31231213'
fill_in "status", :with => 'inativo'
fill_in "telefone", :with =>'221221221'
fill_in "email", :with => '31231213@vic;com'
fill_in "endereco", :with => 'logo ali'
fill_in "CEP", :with =>'21221-221'
fill_in "nota", :with => '12,1'
fill_in "nome", :with => 'JOANELA PORAFA DE ALMEIDA'
fill_in "login", :with =>'log'
fill_in "pass", :with => 'senha'
fill_in "estado", :with => 'RJ'
fill_in "cidade", :with => 'Campos'
fill_in "imageURL", :with => 'htpps pixj idz'
fill_in "admin", :with => '1'
fill_in "detalhes", :with => 'formada naeuash ena eeaseu haea uehae a'

click_button 'Salvar'

    page.should have_content 'Crmv: 31231213'
    page.should have_content 'Status: inativo'
    page.should have_content 'Telefone: 221221221'
    page.should have_content 'Email: 31231213@vic;com'
    page.should have_content 'Endereco: logo ali'
    page.should have_content 'Cep: 21221-221'
    page.should have_content 'Nota: 12,1'
    page.should have_content 'Nome: JOANELA PORAFA DE ALMEIDA'
    page.should have_content 'Login: log'
    page.should have_content 'Cidade: Campos'
    page.should have_content 'Estado: RJ'    
    page.should have_content 'Pass: senha'
    page.should have_content 'Imageurl: htpps pixj idz '
    page.should have_content 'Admin: 1'
    page.should have_content 'Detalhes: formada naeuash ena eeaseu haea uehae a'
   
 
 end

scenario 'Alterar veterinario' do
    visit new_veterinario_path


fill_in "crmv", :with => '31231213'
fill_in "status", :with => 'inativo'
fill_in "telefone", :with =>'221221221'
fill_in "email", :with => '31231213@vic;com'
fill_in "endereco", :with => 'logo ali'
fill_in "CEP", :with =>'21221-221'
fill_in "nota", :with => '12,1'
fill_in "nome", :with => 'JOANELA PORAFA DE ALMEIDA'
fill_in "login", :with =>'log'
fill_in "pass", :with => 'senha'
fill_in "estado", :with => 'RJ'
fill_in "cidade", :with => 'Campos'
fill_in "imageURL", :with => 'htpps pixj idz'
fill_in "admin", :with => '1'
fill_in "detalhes", :with => 'formada na esquina na eeaseu haea uehae a'

click_button 'Salvar'

    page.should have_content 'Crmv: 31231213'
    page.should have_content 'Status: inativo'
    page.should have_content 'Telefone: 221221221'
    page.should have_content 'Email: 31231213@vic;com'
    page.should have_content 'Endereco: logo ali'
    page.should have_content 'Cep: 21221-221'
    page.should have_content 'Nota: 12,1'
    page.should have_content 'Nome: JOANELA PORAFA DE ALMEIDA'
    page.should have_content 'Login: log'
    page.should have_content 'Cidade: Campos'
    page.should have_content 'Estado: RJ'    
    page.should have_content 'Pass: senha'
    page.should have_content 'Imageurl: htpps pixj idz '
    page.should have_content 'Admin: 1'
    page.should have_content 'Detalhes: formada na esquina na eeaseu haea uehae a'
   
 
 end

scenario 'Excluir veterinario' do

    veterinario = FactoryGirl.create(:veterinario)
    visit veterinarios_path

    click_link 'Excluir'
    
    Veterinario.count.should == 0
   
 
 end

end

