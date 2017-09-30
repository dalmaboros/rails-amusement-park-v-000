Rails.application.routes.draw do
  root 'welcome#home'

  resources :users
  resources :attractions

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete 'signout' => 'sessions#destroy'
  post '/rides/create' => 'rides#create'
  # post '/rides'

end
