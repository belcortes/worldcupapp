WorldcupApp::Application.routes.draw do

  resources :cities
  resources :games
  
  resources :users do
    resources :itineraries
  end
  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root :to => 'home#index'

end
