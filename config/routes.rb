Rails.application.routes.draw do
  get 'requisitions/index'

  resources :orders
  resources :suppliers
  resources :agents
  resources :buyers
  resources :brands
  resources :product_styles
  resources :requisitions
  resources :requisition_types
end
