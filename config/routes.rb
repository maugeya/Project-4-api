Rails.application.routes.draw do
  resources :notifications
  resources :comments
  resources :posts
  resources :topics
  scope :api do
    resources :users
  end
end
