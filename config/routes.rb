Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'
  get 'privacy', to: 'pages#privacy'

  resources :contacts, only: :create
  resources :podcasts
  resources :books do
    resources :chapters
  end
  resources :chapters do
    resources :questions
  end
  resources :questions do
    resources :comments, module: :questions
  end
  resources :users do
    resource :profile
    resources :comments
  end
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'podcast', to: 'pages#podcast'
  resources :essays do
    resources :comments, module: :essays, shallow: true
  end
end
