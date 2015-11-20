Rails.application.routes.draw do
  resources :comments
  resources :products
  resources :categories
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
