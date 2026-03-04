Rails.application.routes.draw do
  resources :authors
  resources :books
  resources :video_channels
  resources :channel_subscribes
  resources :assemblies do
    resources :parts
  end
  resources :parts
  resources :posts
  resources :students
  get "welcome/index"
  root "welcome#index"
end 