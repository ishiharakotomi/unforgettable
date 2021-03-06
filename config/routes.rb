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

  	resources :theaters
  	resources :users,          only:[:index, :show, :edit, :update, :destroy]
  	resources :reviews,        only:[:new, :edit, :create, :update, :destroy]
  end

    root "users/theaters#index"

  namespace :users do
    resources :contacts,       only:[:new, :create]
    get 'contacts/:id/confirm' => 'contacts#confirm', as:'contact_confirm'
    patch 'contacts/:id/done' => 'contacts#done', as:'contact_done'
    get 'contacts/:id/done' => 'contacts#new'
    resources :contact_requests, only:[:create]
    get 'contacts_requests/:id/confirm' => 'contact_requests#confirm', as:'contact_request_confirm'
    patch 'contact_requests/:id/done' => 'contact_requests#done', as:'contact_request_done'
    get 'contact_requests/:id/done' => 'contacts#new'
    get 'about' => 'theaters#about'

  	resources :theaters,         only:[:show, :index] do
  	  resources :theaterlikes,   only:[:create, :destroy]
      resources :reviews,        only:[:index]
      resources :recommends,     only:[:index]
    end
  	resources :reviews,          only:[:new, :edit, :create, :update, :destroy] do
      resource :reviewlike,      only:[:create, :destroy]
      post '/reviewlikesindex' => 'reviewlikes#create_index', as:'review_index'
      delete '/reviewlikesindex' => 'reviewlikes#destroy_index', as:'review_index_delete'
      resource :spendlike,       only:[:create, :destroy]
      post '/reviewlikesindex' => 'reviewlikes#create_index', as:'recommend_index'
      delete '/reviewlikesindex' => 'reviewlikes#destroy_index', as:'recommend_index_delete'
    end
  	resources :sidebars,         only:[:index]
    resources :users,            only:[:show, :edit, :update, :destroy]
    resources :theaterlikes,     only:[:index]
    resources :reviewlikes,      only:[:index]
    get 'reviewlikeszero' => 'reviewlikes#reviewlikeszero'
    get 'reviewlikesone' => 'reviewlikes#reviewlikesone'
    resources :recommendlikes,       only:[:index,:create,:destroy]
  end
end