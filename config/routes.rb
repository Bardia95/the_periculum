Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  resources :podcasts
  resources :books
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'podcast', to: 'pages#podcast'
  resources :essays do
    resources :comments, module: :essays
  end
end
