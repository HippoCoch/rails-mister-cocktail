Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
    resources :articles, only: [:create, :show]
  end
  resources :doses, only: [:destroy]
  resources :cocktails, except: :index
end
