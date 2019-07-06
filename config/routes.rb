Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admins do
  	get "search_theaters" => "theaters#search", as:'search_theater'
  	get "search_users" => "users#search", as:'search_users'
  	resources :theaters
  	resources :users,      only:[:index, :show, :edit, :update, :destroy]
  	resources :reviews,    only:[:update, :destroy]

  end

  namespace :users do
  	get "search_theaters" => "theaters#search", as:'search_theater'
  	get "search_users" => "users#search", as:'search_users'
  	resources :theaters,   only:[:show, :index]
  	resources :reviews,    only:[:new, :edit, :create, :update, :destroy]
  	resources :inquiries,  only:[:new]
  	resources :users,      only:[:show, :edit, :update, :destroy]
  	resource  :likes,      only:[:create, :destroy]

  end
      root "users/theaters#index"
end