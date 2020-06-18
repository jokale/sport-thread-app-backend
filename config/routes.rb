Rails.application.routes.draw do
  resources :comments
  # resources :threadds

  resources :threadds do 
    resources :comments
  end 

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

