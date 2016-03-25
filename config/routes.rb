Rails.application.routes.draw do
  resources :users
  get '/sign_up' => 'users#new'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  delete '/sign_in' => 'sessions#destroy'
end
