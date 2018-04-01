Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'contacts/index'
  get 'contacts/new'
  get 'contacts/create'
    get '/' => 'home#index'
    get '/contact' => 'home#contact'
  resources :contacts, only: [:index, :create, :new]
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
