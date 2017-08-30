Rails.application.routes.draw do

  root to: 'pages#home'


  get 'about', to: 'pages#about'
  get 'new', to: 'pages#new'

  resources :articles

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
