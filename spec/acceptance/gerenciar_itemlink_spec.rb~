require 'spec_helper'

feature 'gerenciar itemlink' do
  before :each do
  end
  
  scenario 'incluir itemlink' do

    veterinario = FactoryGirl.create(:veterinario,:nome=> 'JOSHUA')   
    visit new_itemlink_path
    
    fill_in 'Status', :with => 'Aceito'
    select 'JOSHUA', :on => 'Veterinario'
        
    click_button 'Salvar'
   
    page.should have_content 'Status: Aceito'
    page.should have_content 'Veterinario: JOSHUA'

  end

 scenario 'alterar itemlink' do
        veterinario = FactoryGirl.create(:veterinario,:nome=> 'JOSHUaA')   
	itemlink = FactoryGirl.create(:itemlink, :veterinario => veterinario)    
  	visit edit_itemlink_path(itemlink)
    
    fill_in 'Status', :with => 'Aceito'
    select 'JOSHUaA', :on => 'Veterinario'
        
    click_button 'Salvar'
   
    page.should have_content 'Status: Aceito'
    page.should have_content 'Veterinario: JOSHUaA'

  end
 scenario 'excluir itemlink' do
    veterinario = FactoryGirl.create(:veterinario,:nome=> 'JOSHUA')   
    itemlink = FactoryGirl.create(:itemlink, :veterinario => veterinario)  
    visit itemlinks_path

    click_link 'Excluir'  
    
  end
 
end


