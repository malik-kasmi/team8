
Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  get '/styleguide', to: 'pages#styleguide'
  devise_for :users

  resources :teams, only: [:new, :create, :index] do
    resources :games, only: [:new, :create]
  end

  resources :games, only: [] do
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
