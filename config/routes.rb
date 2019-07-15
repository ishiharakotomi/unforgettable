Rails.application.routes.draw do

  namespace :users do
    get 'contacts/new'
    get 'contacts/create'
  end
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
  	resources :users,        only:[:index, :show, :edit, :update, :destroy]
  	resources :reviews,      only:[:new, :edit, :create, :update, :destroy]

  end

  namespace :users do
  	get "search_theaters" => "theaters#search", as:'search_theater'
  	get "search_users" => "users#search", as:'search_users'
  	resources :theaters,     only:[:show, :index] do
  	 resources :theaterlikes,  only:[:create, :destroy]
    end
  	resources :reviews,      only:[:new, :edit, :create, :update] do
     resources :reviewlikes, only:[:create, :destroy]
     resources :spendlikes,  only:[:create, :destroy]
    end
  	resources :users,        only:[:show, :edit, :update, :destroy]

  end
      root "users/theaters#index"
      resources :contacts,   only:[:new, :create]

end