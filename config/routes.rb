Rails.application.routes.draw do
  
  resources :images
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
   resources :orders


end
