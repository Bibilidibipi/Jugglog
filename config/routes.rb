Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create, :index, :show, :update]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :followings, only: [:create, :destroy]
  end
end
