require 'spec_helper'

feature 'gerenciar patologia' do
  before :each do
  end
  
  scenario 'incluir patologia' do

    item = FactoryGirl.create(:item,:id => '1')   
    especialidade = FactoryGirl.create(:especialidade,:nome=> 'Cardio')
    visit new_patologia_path
  
    fill_in 'Nome', :with => 'Influenza'
    fill_in 'NomePopular', :with => 'Gripe'
    select 'Cardio', :on => 'Especialidade'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Influenza'
    page.should have_content 'NomePopular: Gripe'
    page.should have_content 'Especialidade: Cardio'
    page.should have_content 'Item: 1'

  end

 scenario 'alterar patologia' do
        item = FactoryGirl.create(:item,:id => '1')    
        especialidade = FactoryGirl.create(:especialidade,:nome=> 'Cardio')
        patologia = FactoryGirl.create(:patologia, :especialidade => especialidade,:item => item)      
        visit edit_patologia_path(patologia)
    
    fill_in 'Nome', :with => 'Influenza'
    fill_in 'NomePopular', :with => 'Gripe'
    select 'Cardio', :on => 'Especialidade'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Influenza'
    page.should have_content 'NomePopular: Gripe'
    page.should have_content 'Especialidade: Cardio'
    page.should have_content 'Item: 1'
  end

 scenario 'excluir patologia' do
 item = FactoryGirl.create(:item,:id => '1')    
        especialidade = FactoryGirl.create(:especialidade,:nome=> 'Cardio')
        patologia = FactoryGirl.create(:patologia, :especialidade => especialidade,:item => item)       
    visit patologias_path

    click_link 'Excluir'  

  end
 
end


