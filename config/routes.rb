Rails.application.routes.draw do
  resources :products, only: [:index]
  get "/quote", to: "products#quote"
  get "/interstitial", to: "products#interstitial"
  root to: "products#index"
end
