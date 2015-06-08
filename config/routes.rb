Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index]
  resource :carts, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :categories ,only:[:index,:show]
  root to: "products#index"
end
