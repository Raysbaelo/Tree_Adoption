Rails.application.routes.draw do
  devise_for :users
  root to: 'trees#index'

  resources :trees, only: [:index, :show, :new, :create] do
    resources :adoptions
    resources :reviews
  end
  resources :trees do
    resources :adoptions, only: [:new, :create, :destroy]
  end

  resources :trees do
    resources :reviews, only: [ :new, :create, :edit]
  end
  resources :adoptions, only: :destroy

  get 'booking/validate', to: 'trees#adoption'

  resources :reviews, only: :destroy
end
