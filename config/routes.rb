Rails.application.routes.draw do
  resources :profiles
  resources :gazooies
  resources :gazooys
  get 'gazooy/index'
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'gazooies#index'
end
