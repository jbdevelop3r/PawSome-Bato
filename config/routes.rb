Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    authenticated :user do
      root to: 'posts#index', as: :authenticated_root
      resources :places
    end
  
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  namespace :admin do
    resources :users do
      resources :posts, only: [ :index ]
    end
    resources :posts, only: [ :show ]
      # post :report, on: :member
  end
  
  resources :places

  resources :posts do
  	resources :comments
    resources :inquiries
    patch :report, on: :member
  end

  # resources :posts
  resources :users, only: [:index, :show, :update] do
    resources :reviews
  end
end