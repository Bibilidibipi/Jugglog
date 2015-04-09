Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create, :index, :show, :update] do
    get 'search', on: :collection
  end
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :followings, only: [:create, :destroy]
    resources :patterns, only: [:create, :index, :show]
  end
end
