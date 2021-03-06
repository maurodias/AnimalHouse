require 'spec_helper'

feature 'gerenciar raca' do
  before :each do
  end
  
  scenario 'incluir raca' do

    item = FactoryGirl.create(:item,:id => '1')   
    animal = FactoryGirl.create(:animal,:nomePopular => 'Cachorro')
    visit new_raca_path
  
    fill_in 'Nome', :with => 'Boxer'
    fill_in 'Origem', :with => 'China'
    fill_in 'Detalhes', :with => 'Conhecidos por serem carinhosos com criancas'
    
    select '1', :on => 'Item'
    select 'Cachorro', :on => 'Animal'    
    click_button 'Salvar'
   
    page.should have_content 'Nome: Boxer'
    page.should have_content 'Origem: China'
    page.should have_content 'Detalhes: Conhecidos por serem carinhosos com criancas'
    page.should have_content 'Item: 1'
    page.should have_content 'Animal: Cachorro'
  end

 scenario 'alterar raca' do
    item = FactoryGirl.create(:item,:id => '1')   
    animal = FactoryGirl.create(:animal,:nomePopular => 'Cachorro')
    raca = FactoryGirl.create(:raca,:item => item,:animal => animal) 
    visit edit_raca_path(raca)
  
    fill_in 'Nome', :with => 'Boxer'
    fill_in 'Origem', :with => 'China'
    fill_in 'Detalhes', :with => 'Conhecidos por serem carinhosos com criancas'
    
    select '1', :on => 'Item'
    select 'Cachorro', :on => 'Animal'    
    click_button 'Salvar'
   
    page.should have_content 'Nome: Boxer'
    page.should have_content 'Origem: China'
    page.should have_content 'Detalhes: Conhecidos por serem carinhosos com criancas'
    page.should have_content 'Item: 1'
    page.should have_content 'Animal: Cachorro'
  end

 scenario 'excluir raca' do
    item = FactoryGirl.create(:item,:id => '1')   
    animal = FactoryGirl.create(:animal,:nomePopular => 'Cachorro')
    raca = FactoryGirl.create(:raca,:item => item,:animal => animal) 
    visit racas_path

    click_link 'Excluir'  

  end
 
end


