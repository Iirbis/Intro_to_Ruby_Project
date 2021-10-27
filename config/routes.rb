Rails.application.routes.draw do
  get "about", to: "about#index"
  root to: "home#index"
  resources :recipes, only: [:index, :show]
  resources :categories, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
