Rails.application.routes.draw do
  resources :clans
  resources :twitches
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :news
  resources :tournaments

  mount SimpleDiscussion::Engine => "/forum"

  get 'home/index'

  root "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
