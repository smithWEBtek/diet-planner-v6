Rails.application.routes.draw do

  get '/home', to: 'welcome#home'
  root 'welcome#home'
  get '/welcome/goodbye', to: 'admin#user_cancellation'

  post '/users/:id/logs/new', to: 'logs#create'
  post '/users/:id/logs/:id/edit', to: 'logs#update'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  resources :users do
    resources :logs
  end

  post '/users/sign_up', to: 'users#create'
  post '/users/:id/meals/new', to: 'meals#create'

  post '/mealnames', to: 'mealnames#create'

  resources :diets
  resources :groups
  resources :meals
  resources :foods
  resources :admin
  resources :mealnames
  resources :quotes
end
