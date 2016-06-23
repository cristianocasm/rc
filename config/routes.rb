Rails.application.routes.draw do
  root to: 'boards#index'

  resources :boards

  devise_for :users, skip: :registrations, path: ''
  
  # Avoiding user deletion and editing
  as :user do
    get  'sign_up' => 'devise/registrations#new',    as: :new_user_registration
    post 'sign_up' => 'devise/registrations#create', as: :user_registration
  end
end
