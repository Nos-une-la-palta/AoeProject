Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :clans
  resources :twitches
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :news
  resources :tournaments
  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]

  mount SimpleDiscussion::Engine => "/forum"

  get 'home/index'

  root "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
