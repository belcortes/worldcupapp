WorldcupApp::Application.routes.draw do

  resources :cities
  resources :games
  resources :itineraries
  resources :users, only: [:new, :create]
  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root :to => 'home#index'

end
