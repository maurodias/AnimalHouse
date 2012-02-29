require 'spec_helper'

feature 'gerenciar item' do
  before :each do
  end
  
  scenario 'incluir item' do

    especialidade = FactoryGirl.create(:veterinario,:nome=> 'JOSHUA')   
    visit new_item_path
    
    fill_in 'Status', :with => 'Aceito'
    select 'JOSHUA', :on => 'Veterinario'
        
    click_button 'Salvar'
   
    page.should have_content 'Status: Aceito'
    page.should have_content 'Veterinario: JOSHUA'

  end

 
end


