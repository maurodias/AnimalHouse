require 'spec_helper'

feature 'gerenciar vetxespecialidade' do
  before :each do
  end
  
  scenario 'incluir vetxespecialidade' do

    itemlink = FactoryGirl.create(:itemlink,:id => '1')   
    veterinario = FactoryGirl.create(:veterinario,:nome=> 'Anonymous')
    especialidade = FactoryGirl.create(:especialidade,:nome=> 'ONCOLOGIA')        
    visit new_vetxespecialidade_path
  
    select 'Anonymous', :on => 'Veterinario'
    select 'ONCOLOGIA', :on => 'Especialidade'
    select '1', :on => 'Itemlink'
        
    click_button 'Salvar'
   
    page.should have_content 'Veterinario: Anonymous'
    page.should have_content 'Especialidade: ONCOLOGIA'
    page.should have_content 'Itemlink: 1'

  end

 scenario 'alterar vetxespecialidade' do
        itemlink = FactoryGirl.create(:itemlink,:id => '1')   
         veterinario = FactoryGirl.create(:veterinario,:nome=> 'Anonymous')
    especialidade = FactoryGirl.create(:especialidade,:nome=> 'ONCOLOGIA')        
        vetxespecialidade = FactoryGirl.create(:vetxespecialidade, :especialidade => especialidade,:veterinario => veterinario, :itemlink => itemlink)      
        visit edit_vetxespecialidade_path(vetxespecialidade)
    
    select 'Anonymous', :on => 'Veterinario'
    select 'ONCOLOGIA', :on => 'Especialidade'
    select '1', :on => 'Itemlink'
        
    click_button 'Salvar'
   
    page.should have_content 'Veterinario: Anonymous'
    page.should have_content 'Especialidade: ONCOLOGIA'
    page.should have_content 'Itemlink: 1'

end

 scenario 'excluir vetxespecialidade' do
   
    itemlink = FactoryGirl.create(:itemlink,:id => '1')   
    veterinario = FactoryGirl.create(:veterinario,:nome=> 'Anonymous')
    especialidade = FactoryGirl.create(:especialidade,:nome=> 'ONCOLOGIA')        
    vetxespecialidade = FactoryGirl.create(:vetxespecialidade, :especialidade => especialidade,:veterinario => veterinario, :itemlink => itemlink)      
	visit vetxespecialidades_path

    click_link 'Excluir'  

  end
 
end


