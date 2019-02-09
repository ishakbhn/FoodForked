Rails.application.routes.draw do

  root 'plans#index'
  devise_for :users
  get '/profile' => 'plans#profile', as: 'profile'
  post '/listing' => 'plans#listing', as: 'listing'
  resources :plans do
  	resources :user
  end


  # resources :foods
 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end