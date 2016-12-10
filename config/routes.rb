
Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  get '/styleguide', to: 'pages#styleguide'
  devise_for :users

  resources :teams, only: [:new, :create, :index] do
    resources :games, only: [:new, :create]
    member do
      get :invitation
    end
  end

  resources :games, only: [:edit, :update] do
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
      # patch :leave
    end
  end

  resource :profile, only: [:show, :edit, :update]
  get '/:team_referal_url', to: 'teams#referal_landing'

end
