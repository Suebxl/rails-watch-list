Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: [ :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create, :show, :index ]
  end
  resources :movies, only: [:index, :show]
  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:destroy]
end
