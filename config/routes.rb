Rails.application.routes.draw do
  resources :food_meals
  resources :foods
  resources :meals
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
