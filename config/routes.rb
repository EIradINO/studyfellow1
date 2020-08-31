Rails.application.routes.draw do
  get 'rooms/show'
  devise_for :users
  get 'rooms/index'
  get 'pages/show'
  root 'pages#index'
  get 'rooms/new'
  resources :rooms, only: %i[show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
