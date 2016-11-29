Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :teams, only: [:index, :show]

  resources :users, only: [ :index, :show] do
    resources :team_users, only: [:new, :create]
  end

  resources :team_users, only: [] do
    member do
      patch :accept
      patch :reject
      patch :leave
    end
  end

  resource :profile, only: [:show, :edit, :update]

  namespace :captain do
    resources :teams
  end
end
