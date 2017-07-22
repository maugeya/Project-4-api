Rails.application.routes.draw do

  scope :api do
    resources :notifications
    resources :comments
    resources :posts
    resources :topics
    resources :users
  end
end
