Rails.application.routes.draw do
  root to: 'meals#index'
  get "meals/search" => "meals/search"
  resources :meals
end
