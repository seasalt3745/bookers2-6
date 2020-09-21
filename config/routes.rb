Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'
  resources :books do
  	resources :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show,:index,:edit,:update]
end