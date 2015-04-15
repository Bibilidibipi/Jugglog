Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create, :index, :show, :update] do
    get 'search', on: :collection
  end
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :followings, only: [:create, :destroy]
    resources :patterns, only: [:create, :index, :show] do
      get 'groups/:id', on: :collection, to: 'patterns#groups'
    end
    resources :comments, only: [:create, :destroy]
    resources :learnings, only: [:create, :update, :destroy]
    resources :practices, only: [:create, :destroy]
  end
end
