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
fill_in "cep", :with =>'21221-221'
fill_in "nota", :with => '12,1'
fill_in "dtModificacao", :with => '23-23-23'
fill_in "login", :with =>'log'
fill_in "pass", :with => 'senha'
fill_in "fotoperfil", :with => 'htpps pixj idz '


click_button 'Salvar'

    page.should have_content 'Crmv: 31231213'
    page.should have_content 'Status: inativo'
    page.should have_content 'Telefone: 221221221'
    page.should have_content 'Email: 31231213@vic;com'
    page.should have_content 'Endereco: logo ali'
    page.should have_content 'Cep: 21221-221'
    page.should have_content 'Nota: 12,1'
    page.should have_content 'Dtmodificacao: 23-23-23'
    page.should have_content 'Login: log'
    page.should have_content 'Pass: senha'
    page.should have_content 'Fotoperfil: htpps pixj idz '
   
 
 end

scenario 'Alterar veterinario' do
    visit new_veterinario_path


fill_in "crmv", :with => '31231213'
fill_in "status", :with => 'inativo'
fill_in "telefone", :with =>'221221221'
fill_in "email", :with => '31231213@vic;com'
fill_in "endereco", :with => 'logo ali'
fill_in "cep", :with =>'21221-221'
fill_in "nota", :with => '12,1'
fill_in "dtModificacao", :with => '23-23-23'
fill_in "login", :with =>'log'
fill_in "pass", :with => 'senha'
fill_in "fotoperfil", :with => 'htpps pixj idz '


click_button 'Salvar'

    page.should have_content 'Crmv: 31231213'
    page.should have_content 'Status: inativo'
    page.should have_content 'Telefone: 221221221'
    page.should have_content 'Email: 31231213@vic;com'
    page.should have_content 'Endereco: logo ali'
    page.should have_content 'Cep: 21221-221'
    page.should have_content 'Nota: 12,1'
    page.should have_content 'Dtmodificacao: 23-23-23'
    page.should have_content 'Login: log'
    page.should have_content 'Pass: senha'
    page.should have_content 'Fotoperfil: htpps pixj idz '
   
 
 end

scenario 'Excluir veterinario' do

    veterinario = FactoryGirl.create(:veterinario)
    visit veterinarios_path

    click_link 'Excluir'
    
    Veterinario.count.should == 0
   
 
 end

end

