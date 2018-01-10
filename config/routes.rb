Rails.application.routes.draw do
  resources :products, only: [:index]
  get "/quote", to: "products#quote"
  root to: "products#index"
end
