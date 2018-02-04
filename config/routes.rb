Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'podcast', to: 'pages#podcast'
  resources :essays
    resources :comments, module: :essays
  end
  resources :podcasts
    resources :comments
  end

  resources :books
    resources :comments
  end


end
