Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users

  resources :users, shallow: true do 
    resources :addresses
  end 

  resources :categories
  resources :products	
end
