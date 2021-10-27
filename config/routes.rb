Rails.application.routes.draw do
  get 'recipe_ingredients/index'
  get 'recipe_ingredients/show'
  root to: "home#index"
  resources :recipes, only: [:index, :show]
  resources :categories, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
