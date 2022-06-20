Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#index'
  root to: 'trees#index'

  get '/instructions', to: 'pages#instructions', as: 'instructions'
end
