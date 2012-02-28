require 'spec_helper'

feature 'gerenciar item' do
  before :each do
  end
  
  scenario 'incluir item' do
    visit new_item_path
    
    especialidade = FactoryGirl.create(:veterinario,:crmv => '212.322-22')   

    fill_in 'status', :with => 'Aceito'
    select 'Veterinario', :on => 'JOSHUA'
        
    click_button 'Salvar'
   
    page.should have_content 'Satus: Aceito'
    page.should have_content 'Veterinario: JOSHUA'

  end

 
end


