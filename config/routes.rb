Rails.application.routes.draw do


  devise_for :views
  devise_for :users
  root to: "homes#top"
  get '/homes/about' => 'homes#about',as: "about"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]

    resources :post_comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update]
end
