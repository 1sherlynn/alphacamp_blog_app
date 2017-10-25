Rails.application.routes.draw do


  root "posts#index"

  resources :students
  

  get 'js_test', to: 'pages#js_test'

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'new', to: 'pages#new'

  resources :tags
  
  resources :posts do 
  	resources :comments
  end 




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end



