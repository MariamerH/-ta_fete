Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :places do
    resources :bookings, only: [:create]
  end
  get '/', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/booking', to: 'pages#booking'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
