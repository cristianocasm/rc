require 'rails_helper'

describe "Authentications" do
  let!(:user) { FactoryGirl.create(:user) }

  it "signs in registered user" do
    visit '/sign_in'

    within("form#new_user") do
      fill_in 'Email', :with => user.email
      fill_in 'Senha', :with => '123456'
    end
    
    click_button 'Entrar'
    
    expect(page).to have_success_message 'Success'
  end

  it "does not sign in user not registered" do
    visit '/sign_in'

    within("form#new_user") do
      fill_in 'Email', :with => user.email
      fill_in 'Senha', :with => '1234567'
    end
    
    click_button 'Entrar'
    
    expect(page).to have_failure_message 'E-mail ou senha inválidos.'
  end
end
