Rails.application.routes.draw do
  resources :products, only: [:index]
  get "/quote", to: "products#quote"
  get "/policy", to: "products#policy"
  root to: "products#index"
end
