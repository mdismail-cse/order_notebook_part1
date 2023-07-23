Rails.application.routes.draw do
  get 'purchase_order/index'
  get 'purchase_order/show'
  post 'line_item/new'
  post 'line_item/create'

  #resources :line_items

  resources :purchase_orders
  resources :suppliers
  devise_for :stuffs
  get 'store/index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "products#index"

end
