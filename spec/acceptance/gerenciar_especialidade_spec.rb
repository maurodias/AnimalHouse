require 'spec_helper'

feature 'gerenciar especialidade' do
  before :each do
  end
  
  scenario 'incluir especialidade' do

    item = FactoryGirl.create(:item,:id => '1')   
    visit new_especialidade_path
  
    fill_in 'Nome', :with => 'Cardio'
    fill_in 'Detalhes', :with => 'Cardio pequenos'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Cardio'
    page.should have_content 'Detalhes: Cardio pequenos'
    page.should have_content 'Item: 1'

  end

 scenario 'alterar especialidade' do
        item = FactoryGirl.create(:item,:id => '1')    
        especialidade = FactoryGirl.create(:especialidade,:item => item) 
        visit edit_especialidade_path(especialidade)
    
       fill_in 'Nome', :with => 'Cardio'
       fill_in 'Detalhes', :with => 'Cardio pequenos'
       select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Cardio'
    page.should have_content 'Detalhes: Cardio pequenos'
    page.should have_content 'Item: 1'
  end

 scenario 'excluir especialidade' do
    item = FactoryGirl.create(:item,:id=> '1')    
    especialidade = FactoryGirl.create(:especialidade,:item => item) 
    visit especialidades_path

    click_link 'Excluir'  

  end
 
end


