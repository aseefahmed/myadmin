Rails.application.routes.draw do
  resources :orders
  resources :suppliers
  resources :agents
  resources :buyers
  resources :brands
  resources :product_styles
end
