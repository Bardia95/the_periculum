Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'podcast', to: 'pages#podcast'
  resources :essays, shallow: true do
    resources :comments
  end
  resources :podcasts, shallow: true do
    resources :comments
  end

  resources :books, shallow: true do
    resources :comments
  end


end
