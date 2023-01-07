Rails.application.routes.draw do
  
  

  devise_for :users
  resources :places

  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root to: 'posts#index', as: :authenticated_root
    end
  
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end


  
  resources :posts
  resources :users, only: [:index, :show] do
    resources :reviews
  end
end
