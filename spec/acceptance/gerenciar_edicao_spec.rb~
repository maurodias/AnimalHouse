require 'spec_helper'

feature 'gerenciar edicao' do
  before :each do
  end
  
  scenario 'incluir edicao' do

    item = FactoryGirl.create(:item,:id => '1')   
    veterinario = FactoryGirl.create(:veterinario,:nome => 'JOSHUA')   
    visit new_edicao_path
  
    fill_in 'CampoEditado', :with => 'nome'
    fill_in 'Status', :with => 'Aceito'
    select 'JOSHUA', :on => 'Veterinario'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Status: Aceito'
    page.should have_content 'CampoEditado: nome'
    page.should have_content 'Veterinario: JOSHUA'
    page.should have_content 'Item: 1'

  end

 scenario 'alterar edicao' do
        item = FactoryGirl.create(:item,:id => '1')    
        veterinario = FactoryGirl.create(:veterinario,:nome=> 'JOSHUaA')
        edicao = FactoryGirl.create(:edicao, :veterinario => veterinario,:item => item)      
        visit edit_edicao_path(item)
    
    fill_in 'CampoEditado', :with => 'nome'
    fill_in 'Status', :with => 'Aceito'
    select 'JOSHUaA', :on => 'Veterinario'
    select '1', :on => 'Item'
        
    click_button 'Salvar'
   
    page.should have_content 'Status: Aceito'
    page.should have_content 'CampoEditado: nome'
    page.should have_content 'Veterinario: JOSHUaA'
    page.should have_content 'Item: 1'
  end

 scenario 'excluir edicao' do
    item = FactoryGirl.create(:item,:id=> '1')    
    veterinario = FactoryGirl.create(:veterinario,:nome=> 'JOSHUaA') 
    edicao = FactoryGirl.create(:edicao, :veterinario => veterinario,:item => item)       
    visit edicaos_path

    click_link 'Excluir'  

  end
 
end


