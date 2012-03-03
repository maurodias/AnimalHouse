require 'spec_helper'

feature 'gerenciar sintoma' do
  before :each do
  end
  
  scenario 'incluir sintoma' do

    item = FactoryGirl.create(:item,:id => '1')   
    visit new_sintoma_path
  
    fill_in 'Nome', :with => 'Febre'
    fill_in 'Detalhes', :with => 'entre 40 e 45 graus'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Febre'
    page.should have_content 'Detalhes: entre 40 e 45 graus'
    page.should have_content 'Item: 1'

  end

 scenario 'alterar sintoma' do
        item = FactoryGirl.create(:item,:id => '1')    
        sintoma = FactoryGirl.create(:sintoma,:item => item) 
        visit edit_sintoma_path(sintoma)
    
       fill_in 'Nome', :with => 'Febre'
       fill_in 'Detalhes', :with => 'entre 40 e 45 graus'
       select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Febre'
    page.should have_content 'Detalhes: entre 40 e 45 graus'
    page.should have_content 'Item: 1'
  end

 scenario 'excluir sintoma' do
    item = FactoryGirl.create(:item,:id=> '1')    
    sintoma = FactoryGirl.create(:sintoma,:item => item) 
    visit sintomas_path

    click_link 'Excluir'  

  end
 
end


