Rails.application.routes.draw do
  root 'welcome#index'
  # root 'users/sessions#new'
  devise_for :users

  resources :users 
  resources :addresses
 
  resources :categories
  resources :products	

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
end
