require 'rails_helper'

feature 'Customer visit profile' do
  scenario 'success' do
    visit root_path
    
    expect(page).to have_content("Bem vindo")
  end
end