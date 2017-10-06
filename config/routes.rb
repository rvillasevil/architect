Rails.application.routes.draw do
  root   'static_pages#home'

  get     '/lista',     to: "users#lista"
  get     '/help',      to: 'static_pages#help'
  get     '/about',     to: 'static_pages#about'
  get     '/contact',   to: 'static_pages#contact'
  get     '/popular',   to: 'static_pages#popular'
  get     '/signup',    to: 'users#new'
  get     '/login',     to: 'sessions#new'
  post    '/login',     to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy'
  get     '/lista',     to: "users#lista"
  get     '/circles',   to: "users#following"
  get     '/new_plaza', to: 'users#new_plaza'
  get     '/plazas',    to: 'users#following_plaza'
  get     '/petition',  to: 'microposts#petition_form'
  get     '/micropost', to: 'microposts#show'
  get     '/petitions', to: 'microposts#petition_index'
  post    '/plazas',            to: 'plazas#create'
  get     '/allplazas', to: 'plazas#all_index'
  delete  '/dejardeseguir',     to: 'groups#destroy'
  post    '/seguir',            to: 'groups#create'

  resources :users do
    member do
      get :following, :followers
    end

  resources :users do
    resources :users
    end
  
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  resources :microposts do
    member do
      get :hashtag
    end
  end
  resources :microposts do
    resources :comments
    resources :votes do
      member do
        get :update_like
        get :update_dislike
      end
    end
  end

  resources :users do
    resources :comments
    resources :plazas
    resources :groups
  end

  resources :plazas

  
  resources :relationships,       only: [:create, :destroy]
end