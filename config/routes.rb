Rails.application.routes.draw do

  get '/home', to: 'welcome#home'
  root 'welcome#home'

  get '/welcome/goodbye', to: 'admin#user_cancellation'
  get '/group_update', to: 'admin#group_update'
  get '/export_users_data', to: 'admin#export_users_data'


  get '/random_quotes', to: 'quotes#random_quotes'
  get '/clear_quotes', to: 'quotes#clear_quotes'
  get '/export_quotes_csv', to: 'quotes#export_quotes_csv'


  get '/export_user_csv', to: 'users#export_csv'
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
  resources :admin, only: [:new, :index]
  resources :mealnames
  resources :quotes
end
