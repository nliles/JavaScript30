Rails.application.routes.draw do

  get 'items/index'

  get 'item/index'

  resources :users 
  resources :items do 
  resources :bids 
  end 

  resources :sessions

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root 'welcome#index'
end


