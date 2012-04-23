Ads::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :adtypes

  resources :users

  resources :ads

  resources :roles

  root :to => 'ads#index'
end
