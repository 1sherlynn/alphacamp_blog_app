Rails.application.routes.draw do



  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'new', to: 'pages#new'

  
  resources :posts do 
  	resources :comments
  end 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end



