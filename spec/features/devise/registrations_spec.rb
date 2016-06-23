require 'rails_helper'

describe "Registrations" do
  let!(:user) { FactoryGirl.create(:user) }

  it "signs up a user" do
    visit '/sign_up'

    within("form#new_user") do
      fill_in 'Email', :with => 'abc123@email.com'
      fill_in 'Senha', :with => '123456'
      fill_in 'Confirme sua senha', :with => '123456'
    end
    
    click_button 'Cadastrar'
    
    expect(page).to have_success_message 'Success'
  end

  it "does not sign up a user with same one's email" do
    visit '/sign_up'

    within("form#new_user") do
      fill_in 'Email', :with => user.email
      fill_in 'Senha', :with => '1234567'
      fill_in 'Confirme sua senha', :with => '123456'
    end
    
    click_button 'Cadastrar'
    
    expect(page).to have_failure_message 'Email já está em uso'
  end
end
