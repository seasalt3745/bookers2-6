Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'
  get 'relationships/follows'
  get 'relationships/followers'

  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show,:index,:edit,:update]
  resources :relationships, only: [:create,:destroy]
end