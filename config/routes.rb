Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/giphs/select' => 'giphs#select', :as => 'giph_select'

  resources :users
  resources :conversations
  resources :contacts
  resources :giphs
  resources :messages



  get '/sign_up' => 'users#new'

  get '/sign_in' => 'session#new'
  post '/sign_in' => 'session#create'
  delete '/sign_in' => 'session#destroy'
end
