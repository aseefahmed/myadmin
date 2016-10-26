Rails.application.routes.draw do
  get 'react_test/index'
  get 'react_test/task1'
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
