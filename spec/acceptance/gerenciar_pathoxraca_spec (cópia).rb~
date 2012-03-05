require 'spec_helper'

feature 'gerenciar pathoxraca' do
  before :each do
  end
  
  scenario 'incluir pathoxraca' do

    itemlink = FactoryGirl.create(:itemlink,:id => '1')   
    raca = FactoryGirl.create(:raca,:nomePopular=> 'Boxer')
    patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')        
    visit new_pathoxraca_path
  
    select 'Cancer', :on => 'Patologia'
    select 'Boxer', :on => 'Raca'
    select '1', :on => 'Itemlink'
        
    click_button 'Salvar'
   
    page.should have_content 'Patologia: Cancer'
    page.should have_content 'Tratamento: Gelo'
    page.should have_content 'Itemlink: 1'

  end

 scenario 'alterar pathoxraca' do
        itemlink = FactoryGirl.create(:itemlink,:id => '1')   
        raca = FactoryGirl.create(:raca,:nomePopular=> 'Boxer')
        patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')        
        pathoxraca = FactoryGirl.create(:pathoxraca, :raca => raca,:patologia => patologia, :itemlink => itemlink)      
        visit edit_pathoxraca_path(pathoxraca)
    
    select 'Cancer', :on => 'Patologia'
    select 'Gelo', :on => 'Boxer'
    select '1', :on => 'Itemlink'
        
    click_button 'Salvar'
   
    page.should have_content 'Patologia: Cancer'
    page.should have_content 'Raca: Boxer'
    page.should have_content 'Itemlink: 1'

end

 scenario 'excluir pathoxraca' do
        itemlink = FactoryGirl.create(:itemlink,:id => '1')   
        raca = FactoryGirl.create(:raca,:nomePopular=> 'Boxer')
        patologia = FactoryGirl.create(:patologia,:nome=> 'Cancer')        
        pathoxraca = FactoryGirl.create(:pathoxraca, :raca => raca,:patologia => patologia, :itemlink => itemlink)     

visit pathoxracas_path

    click_link 'Excluir'  

  end
 
end


