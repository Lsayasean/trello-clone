Rails.application.routes.draw do

  resources :cards
  resources :lists
  root to: 'users#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }

end
