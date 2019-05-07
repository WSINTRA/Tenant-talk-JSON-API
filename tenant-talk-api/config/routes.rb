Rails.application.routes.draw do

  resources :post_replies, only: [:index, :new, :create, :update]
  resources :replies, only: [:index, :new, :create, :update]
  resources :posts, only: [:index, :new, :create, :update]
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
