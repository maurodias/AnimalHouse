require 'spec_helper'

feature 'gerenciar relato' do
  before :each do
  end
  
  scenario 'incluir relato' do

    item = FactoryGirl.create(:item,:id => '1')   
    patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')
    visit new_relato_path
  
    fill_in 'Detalhes', :with => 'Gripe eh osso'
    select 'Cancer', :on => 'Patologia'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Detalhes: Gripe eh osso'
    page.should have_content 'Patologia: Cancer'
    page.should have_content 'Item: 1'

  end

 scenario 'alterar Relato' do
        item = FactoryGirl.create(:item,:id => '1')    
        patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')
        relato = FactoryGirl.create(:relato, :patologia => patologia,:item => item)      
        visit edit_relato_path(relato)
    
    
    fill_in 'Detalhes', :with => 'Gripe eh osso'
    select 'Cancer', :on => 'Patologia'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Detalhes: Gripe eh osso'
    page.should have_content 'Patologia: Cancer'
    page.should have_content 'Item: 1'
  end

 scenario 'excluir relato' do
       item = FactoryGirl.create(:item,:id => '1')    
        patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')
        relato = FactoryGirl.create(:relato, :patologia => patologia,:item => item)
        visit relatos_path

    click_link 'Excluir'  

  end
 
end


