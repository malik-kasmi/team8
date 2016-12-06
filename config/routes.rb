Rails.application.routes.draw do
  root to: 'pages#home'
  get '/styleguide', to: 'pages#styleguide'
  devise_for :users

  resources :teams, only: [:new, :create, :index, :show] do
    resources :games, only: [:new, :create]
  end

  resources :teams, only: [] do
    member do
      patch :accept
      patch :reject
    end
  end

  resources :users, only: [:new, :create] do
    resources :team_users, only: [:new, :create]
  end

  resources :team_users, only: [:new, :create] do
    member do
      patch :accept
      patch :reject
      patch :leave
    end
  end

  resource :profile, only: [:show, :edit, :update]

end
