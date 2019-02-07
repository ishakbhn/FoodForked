Rails.application.routes.draw do

  root 'plans#index'
  get '/profile' => 'plans#profile', as: 'profile'
  post '/listing' => 'plans#listing', as: 'listing'
  resources :plans
  # resources :foods
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end