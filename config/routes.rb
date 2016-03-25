Rails.application.routes.draw do
  root :to => 'static_pages#home'

  resources :users
  resources :conversations
  resources :contacts
  resources :giphs

  get '/sign_up' => 'users#new'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  delete '/sign_in' => 'sessions#destroy'
end
