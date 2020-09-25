Rails.application.routes.draw do
  
  devise_for :users
  root 'home#top'
  get 'home/about'
  get "search" => "search#search"

  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show,:index,:edit,:update] do
    get 'relationships/follows'
    get 'relationships/followers'
  end
  resources :relationships, only: [:create,:destroy]
end