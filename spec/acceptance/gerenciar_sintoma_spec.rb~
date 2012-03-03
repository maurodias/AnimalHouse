require 'spec_helper'

feature 'gerenciar animal' do
  before :each do
  end
  
  scenario 'incluir animal' do

    item = FactoryGirl.create(:item,:id => '1')   
    visit new_animal_path
  
    fill_in 'Nome Cientifico', :with => 'Canis lupus familiaris'
    fill_in 'Nome Popular', :with => 'Cachorro'
    fill_in 'Detalhes', :with => 'Conhecido tambem como Cao'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome Cientifico: Canis lupus familiaris'
    page.should have_content 'Nome Popular: Cachorro'
    page.should have_content 'Detalhes: Conhecido tambem como Cao'
    page.should have_content 'Item: 1'

  end

 scenario 'alterar animal' do
        item = FactoryGirl.create(:item,:id => '1')    
        animal = FactoryGirl.create(:animal,:item => item) 
        visit edit_animal_path(item)
    
    fill_in 'Nome Cientifico', :with => 'Canis lupus familiaris'
    fill_in 'Nome Popular', :with => 'Cachorro'
    fill_in 'Detalhes', :with => 'Conhecido tambem como Cao'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome Cientifico: Canis lupus familiaris'
    page.should have_content 'Nome Popular: Cachorro'
    page.should have_content 'Detalhes: Conhecido tambem como Cao'
    page.should have_content 'Item: 1'
  end

 scenario 'excluir animal' do
    item = FactoryGirl.create(:item,:id=> '1')    
    animal = FactoryGirl.create(:animal,:item => item) 
    visit animals_path

    click_link 'Excluir'  

  end
 
end


