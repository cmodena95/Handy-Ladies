Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :workers, only: [:index, :show] do
    resources :jobs, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

  get 'chats/:user_id', to: 'chats#show', as: 'chat'

  resources :users, only: [:index, :show] do
    resources :messages, only: [:create, :index]
  end

  resources :jobs, only: [:index, :show, :destroy, :update] do
    resources :reviews, only: [:new, :create]
  end
end
