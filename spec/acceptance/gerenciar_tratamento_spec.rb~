require 'spec_helper'

feature 'gerenciar tratamento' do
  before :each do
  end
  
  scenario 'incluir tratamento' do

    item = FactoryGirl.create(:item,:id => '1')   
    visit new_tratamento_path
  
    fill_in 'Nome', :with => 'Bolsa Termica'
    fill_in 'Detalhes', :with => 'Conhecido tambem como Cao'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Bolsa Termica'
    page.should have_content 'Detalhes: Conhecido tambem como Cao'
    page.should have_content 'Item: 1'

  end

 scenario 'alterar tratamento' do
        item = FactoryGirl.create(:item,:id => '1')    
        tratamento = FactoryGirl.create(:tratamento,:item => item) 
        visit edit_tratamento_path(tratamento)
    
   
    fill_in 'Nome', :with => 'Bolsa Termica'
    fill_in 'Detalhes', :with => 'Conhecido tambem como Cao'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Bolsa Termica'
    page.should have_content 'Detalhes: Conhecido tambem como Cao'
    page.should have_content 'Item: 1'
  end

 scenario 'excluir tratamento' do
    item = FactoryGirl.create(:item,:id=> '1')    
    tratamento = FactoryGirl.create(:tratamento,:item => item) 
    visit tratamentos_path

    click_link 'Excluir'  

  end
 
end


