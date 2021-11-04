Rails.application.routes.draw do

  
  root to: 'pages#home' 

  get '/welcome', to: 'pages#welcome'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'

  get "sign_up", to: "sessions#new"
  post "sign_up", to: "sessions#create"


  resources :posts
  resources :users
  resources :comments
  resources :sessions, only: [:new, :create, :destroy] 

  #resources :posts do
    #resources :comments
  #end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end