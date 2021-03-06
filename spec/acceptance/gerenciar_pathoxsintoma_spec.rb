require 'spec_helper'

feature 'gerenciar pathoxsintoma' do
  before :each do
  end
  
  scenario 'incluir pathoxsintoma' do

    itemlink = FactoryGirl.create(:itemlink,:id => '1')   
    sintoma = FactoryGirl.create(:sintoma,:nome=> 'Febre Alta')
    patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')        
    visit new_pathoxsintoma_path
  
    select 'Cancer', :on => 'Patologia'
    select 'Febre Alta', :on => 'Sintoma'
    select '1', :on => 'Itemlink'
        
    click_button 'Salvar'
   
    page.should have_content 'Patologia: Cancer'
    page.should have_content 'Sintoma: Febre Alta'
    page.should have_content 'Itemlink: 1'

  end

 scenario 'alterar pathoxsintoma' do
        itemlink = FactoryGirl.create(:itemlink,:id => '1')   
        sintoma = FactoryGirl.create(:sintoma,:nome=> 'Febre Alta')
        patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')        
        pathoxsintoma = FactoryGirl.create(:pathoxsintoma, :sintoma => sintoma,:patologia => patologia, :itemlink => itemlink)      
        visit edit_pathoxsintoma_path(pathoxsintoma)
    
    select 'Cancer', :on => 'Patologia'
    select 'Febre Alta', :on => 'Sintoma'
    select '1', :on => 'Itemlink'
        
    click_button 'Salvar'
   
    page.should have_content 'Patologia: Cancer'
    page.should have_content 'Sintoma: Febre Alta'
    page.should have_content 'Itemlink: 1'

end

 scenario 'excluir pathoxsintoma' do
        itemlink = FactoryGirl.create(:itemlink,:id => '1')   
        sintoma = FactoryGirl.create(:sintoma,:nome=> 'Febre Alta')
        patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')        
        pathoxsintoma = FactoryGirl.create(:pathoxsintoma, :sintoma => sintoma,:patologia => patologia, :itemlink => itemlink)
	visit pathoxsintomas_path

    click_link 'Excluir'  

  end
 
end


