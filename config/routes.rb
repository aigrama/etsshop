Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resource :categories ,only:[:index,:show,:update]
  root to: "products#index"
end
