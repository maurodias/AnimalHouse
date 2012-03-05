require 'spec_helper'

feature 'gerenciar follow' do
  before :each do
  end
  
  scenario 'incluir follow' do

    
    follower = FactoryGirl.create(:veterinario,:nome=> 'Seguidor')
    followed = FactoryGirl.create(:veterinario,:nome=> 'Seguido')
    visit new_follow_path
  
    select 'Seguidor', :on => 'Vet Follower'
    select 'Seguido', :on => 'Vet Followed '
    fill_in 'Status', :with => 'yes'
    
    click_button 'Salvar'
   
    page.should have_content 'Vet Follower: Seguidor'
    page.should have_content 'Vet Followed: Seguido'
    page.should have_content 'Status: yes'

  end

 scenario 'alterar follow' do
    
    follower = FactoryGirl.create(:veterinario,:nome=> 'Seguidor')
    followed = FactoryGirl.create(:veterinario,:nome=> 'Seguido')
    follow = FactoryGirl.create(:follow, :veterinario => follower,:veterinario => followed)   
    visit edit_follow_path(follow)
  

    select 'Seguidor', :on => 'Vet Follower'
    select 'Seguido', :on => 'Vet Followed '
    fill_in 'Status', :with => 'yes'
    
    click_button 'Salvar'
   
    page.should have_content 'Vet Follower: Seguidor'
    page.should have_content 'Vet Followed: Seguido'
    page.should have_content 'Status: yes'
  
end

 scenario 'excluir follow' do
   
    follower = FactoryGirl.create(:veterinario,:nome=> 'Seguidor')
    followed = FactoryGirl.create(:veterinario,:nome=> 'Seguido')
    follow = FactoryGirl.create(:follow, :veterinario => follower,:veterinario => followed)      
	visit follows_path

    click_link 'Excluir'  

  end
 
end


