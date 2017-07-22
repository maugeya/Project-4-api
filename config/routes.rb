Rails.application.routes.draw do

  scope :api do
    resources :notifications
    resources :comments
    resources :posts
    resources :topics
    resources :users, except: [:create]

    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
